module ApplicationHelper
  def default_meta_tags
    {
      site: 'CATching',
      title: '押しネコが見つかる動画検索サイト',
      reverse: true,
      charset: 'utf-8',
      description: '押しネコが見つかる動画検索サイト',
      keywords: '猫, 動画, 検索',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('icon.png') },
        { href: image_url('icon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' }
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@Runteq_sayaka'
      }
    }
  end
end
