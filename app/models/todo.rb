class Todo < ActiveRecord::Base
def todo_params
      params.require(:todo).permit(:title, :notes)
    end
end
