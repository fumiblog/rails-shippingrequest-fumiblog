class RecordPdf < Prawn::Document

  def initialize(record)

    super(
      page_size: 'A4',
      top_margin: 40,
      bottom_margin: 30,
      left_margin: 20,
      right_margin: 20
    )

    font 'app/assets/fonts/ipaexg.ttf'

    @record = record

    content
  end

  def content
    text '矢野　文久（ヤノ　フミヒサ）

    株式会社 柏木興産　県南営業部

    〒830-0044 久留米市本町10-26

    丸善ビル2F

    TEL:0942-33-1456 
    
    FAX:0942-33-1459

    email:fyano@kashiwagi-k.co.jp
    
    Handy Phone:090-5565-1801'
    # text 'hello こんにちは 春夏秋冬'
  end

end
