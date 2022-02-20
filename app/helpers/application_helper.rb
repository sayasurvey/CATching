module ApplicationHelper
  def default_meta_tags
    {
      site: 'CATching',
      title: '推し猫が見つかる動画まとめサイト',
      reverse: true,
      charset: 'utf-8',
      description: '動画まとめサイト',
      keywords: '猫, ネコ, ねこ, 動画, まとめ',
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
