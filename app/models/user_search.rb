class UserSearch
  #何だこれ？
  include ActiveModel::Model

  #キーワード変数をアクセス可能に設定
  attr_accessor :search_name, :search_age

    def execute
      User.ransack(name_cont: @search_name, age_eq: @search_age).result
    end
end
