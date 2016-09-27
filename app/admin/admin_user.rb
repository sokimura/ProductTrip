ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

    # activerecord:
    # models:
    #   site: "ウェブサービス"
    #   category: "カテゴリ"
    # attributes:
    #   site:
    #     id: "ID"
    #     title: "タイトル"
    #     text: "説明"
    #     image_url: "画像URL"
    #     site_url: "サイトURL"
    #     category_id: "カテゴリ"
    #     created_at: "作成日"
    #     updated_at: "更新日"
    #   category:
    #     id: "ID"
    #     name: "カテゴリ名"
    #     created_at: "作成日"
    #     updated_at: "更新日"

end
