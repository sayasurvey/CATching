module ApplicationHelper
  def default_meta_tags
    {
      site: 'CATching',
      title: '押しネコが見つかる動画検索サイト',
      reverse: true,
      separator: '|',
      description: '押しネコが見つかる動画検索サイト',
      keywords: '猫, 動画, 検索',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      og: {
        site_name: 'サイト名',
        title: 'タイトル',
        description: 'ディスクリプション',
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@Runteq_sayaka',
      }
    }
  end
end
