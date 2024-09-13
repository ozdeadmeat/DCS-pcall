DEBUG_FUNCTION_HOOK_INTERESTING_CALLSTACK_INDEX = 2;
DEBUG_FUNCTION_HOOK_SKIP_CALLSTACK_MEMBER_COUNT = 3;

Debugger = {

    ---
    --- This method will return a table containing the names, types and values of all the parameters of the function that
    --- is passed to it. Since this includes a little black magic, lets break it down:
    ---
    --- 1. Grab the current debug hook, so we can get back to safety later.
    --- 2. Create a new debug hook, which will:
    --- 2a. Detect if it is being executed inside a pcall or not, and if not, return immediately.
    --- 2b. Grab the local environment directly above the current call stack (contains the arguments as variables within a table).
    --- 2c. If we're at the end of the arguments, restore the original debug hook, throw an error, and return.
    --- 2d. If we're still inside the hook (processing a table entry), create a table entry and add it to our up-value table.
    --- 3. Register our new hook, so that the hook is called before each function called.
    --- 4. pcall() the argument that is passed in, expecting it to error (see 2c).
    --- 4a. If no error, there were no arguments, so we'll return an empty table.
    --- 5. Reset the global hook to it's original value, so that our hook doesn't get in the way of other code unintentionally.
    ---
    --- NOTE: If the function takes no arguments, it will successfully execute (and do whatever it is designed to do).
    --- USE WITH CAUTION
    ---
    ---@param _function function
    getArgumentsForFunction = function(_function)
        if type(_function) ~= "function" then
            return {};
        end

        local _arguments = {};
        local _originalDebugHook = debug.gethook();
        local _argumentCollectorHook = function( ... )
            local _functionInfo = debug.getinfo(DEBUG_FUNCTION_HOOK_SKIP_CALLSTACK_MEMBER_COUNT);

            if _functionInfo.name ~= 'pcall' then
                return;
            end

            for _i = 1, math.huge do
                local _name, _value = debug.getlocal(DEBUG_FUNCTION_HOOK_INTERESTING_CALLSTACK_INDEX, _i);
                if not _name or _name == '(*temporary)' then
                    debug.sethook(_originalDebugHook);
                    error("finished collecting arguments, this isn't actually an error");
                    return;
                end
                table.insert(_arguments, {
                    name = _name,
                    type = type(_value),
                    value = _value
                });
            end
        end

        debug.sethook(_argumentCollectorHook, "c");
        pcall(_function); -- guaranteed to fail if the function takes any arguments, but we don't care about the return values
        debug.sethook(_originalDebugHook);
        return _arguments;
    end
}