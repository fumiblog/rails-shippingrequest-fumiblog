module ApplicationHelper
  def default_meta_tags
    {
      site: '出荷ソフト',
      title: 'トップページ',
      reverse: true,
      charset: 'utf-8',
      description: 'ご訪問ありがとうございます。出荷ソフトをruby on ralesで作成しました。',
      keywords: 'rails,ruby,プログラミング,bike,coffee',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('kashiwagi_logo.png') }
      ],
      og: {
        site_name: :site, # もしくは site_name: :site
        title: :title, # もしくは title: :title
        description: :description, # もしくは description: :description
        type: 'shipping',
        url: request.original_url,
        image: image_url('kashiwagi_logo.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@fumihisa_y',
      }
    }
  end
end
