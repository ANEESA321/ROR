class UserPdf < Prawn::Document
    def initialize(users)
        super()
        @users = User.all
        user_id
    end
    def user_id
        table user_id_all 
    end
    def user_id_all
        [["Id","First name","Last name","DOB"]] +
        @users.map do |user|
            [user.id,user.first_name,user.last_name,user.DOB]
        end
    end
end