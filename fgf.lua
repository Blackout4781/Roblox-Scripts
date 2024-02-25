local function getServerConstant(value)
    return value
end

local stringPattern = getServerConstant('%s(.)');
return function(text)
    if not text or not stringPattern then
        -- Handle nil values
        return nil
    end

    return string.lower(text):gsub(stringPattern, string.upper)
end
