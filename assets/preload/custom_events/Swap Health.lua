function onEvent(name, value1, value2)
    if name == "Swap Health" then
        setProperty('health', value1);
    end
end