class Reply < ActiveRecord::Base
    belongs_to :post
    # validates :content, presence: {message: "제목이 비었습니다."}
end
