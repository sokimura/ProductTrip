ActiveAdmin.register Site do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :name, :text, :site_url, :image_url, :category_id

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
