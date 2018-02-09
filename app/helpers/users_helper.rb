module UsersHelper
    def posts?(user)
        user.posts.any?
    end
    
    def comments?(user)
        user.comments.any? 
    end
    
    def favorites?(user)
        user.favorites.any?
    end
end
