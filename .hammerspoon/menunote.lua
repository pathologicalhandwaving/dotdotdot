todo = hs.menubar.new()
function setTodoDisplay(state)
    if state then
        todo:setTitle("TODO")
    else
        todo:setTitle("DONE")
    end
end

function todoClicked()
    todo:setClickCallback(todoClicked)
    setTodoDisplay(hs.todo.get("WORKING"))
end
