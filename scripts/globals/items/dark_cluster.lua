-----------------------------------------
-- ID: 4111
-- Dark Cluster
-- Turn into a stack of dark crystals
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:getFreeSlotsCount() == 0) then
        result = 308;
    end
    return result;
end;

function onItemUse(target)
    target:addItem(4103,12);
end;