Wrapper = {
    wrap = function(_object, _type)
        local _wrapped = {
            _source = _object
        };
        for _key, _value in pairs(_object) do
            if type(_value) ~= "function" then
                _wrapped[_key] = _object[_value];
            else
                _wrapped[_key] = _type[_value];
            end
        end
    end,

    unwrap = function(_object)
        if _object == nil then
            return nil;
        end
        if _object._source == nil then
            return _object;
        end

        return _object._source;
    end
}

--[[ example usage:

local unit = Unit.getByName("CVN75");
local wrappedUnit = Wrapper.wrap(unit, DCS.Unit);
wrappedUnit:getID(); -- call the wrapper, not the original function

]]
