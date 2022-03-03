class InvoicePdf < Prawn::Document

  def initialize(invoice)

    super(
      page_size: 'A4',
      page_layout: :landscape,
      top_margin: 40,
      bottom_margin: 30,
      left_margin: 20,
      right_margin: 20
    )

    font 'app/assets/fonts/ipaexg.ttf'

    @head = invoice

    content

    width = 50
    height = 20
    angle = 30
    x = 200
    y = cursor - 10
    stroke_rectangle [150, y], width, height
    text_box(
      "到着希望",
    at: [150, y], width: width, height: height, align: :center, valign: :center, size: 11
    )
    width = 140
    height = 20
    angle = 30
    x = 200
    y = cursor - 10
    stroke_rectangle [200, y], width, height
    text_box(
      "#{@head.ship_date.strftime("%-m月%-d日 %-H時%M分")}",
      at: [200, y], width: width, height: height, align: :center, valign: :center, size: 14
    )
    width = 50
    height = 20
    angle = 30
    x = 200
    y = cursor - 10
    stroke_rectangle [340, y], width, height
    text_box(
      "使用車両",
      at: [340, y], width: width, height: height, align: :center, valign: :center, size: 11
    )
    width = 140
    height = 20
    angle = 30
    x = 200
    y = cursor - 10
    stroke_rectangle [390, y], width, height
    text_box(
      "#{@head.vehicle}",
      at: [390, y], width: width, height: height, align: :center, valign: :center, size: 14
    )
    width = 50
    height = 20
    angle = 30
    x = 200
    y = cursor - 10
    stroke_rectangle [530, y], width, height
    text_box(
      "現場地域",
      at: [530, y], width: width, height: height, align: :center, valign: :center, size: 11
    )
    width = 220
    height = 20
    angle = 30
    x = 200
    y = cursor - 10
    stroke_rectangle [580, y], width, height
    text_box(
      "",
      at: [580, y], width: width, height: height, align: :center, valign: :center, size: 14
    )
    width = 50
    height = 20
    angle = 30
    x = 200
    y = cursor - 30
    stroke_rectangle [150, y], width, height
    text_box(
      "請求先",
    at: [150, y], width: width, height: height, align: :center, valign: :center, size: 11
    )
    width = 140
    height = 20
    angle = 30
    x = 200
    y = cursor - 30
    stroke_rectangle [200, y], width, height
    text_box(
      "柏木興産",
      at: [200, y], width: width, height: height, align: :center, valign: :center, size: 14
    )
    width = 50
    height = 20
    angle = 30
    x = 200
    y = cursor - 30
    stroke_rectangle [340, y], width, height
    text_box(
      "業者名",
      at: [340, y], width: width, height: height, align: :center, valign: :center, size: 11
    )
    width = 140
    height = 20
    angle = 30
    x = 200
    y = cursor - 30
    stroke_rectangle [390, y], width, height
    text_box(
      "#{@head.delivery}",
      at: [390, y], width: width, height: height, align: :center, valign: :center, size: 14
    )
    width = 50
    height = 20
    angle = 30
    x = 200
    y = cursor - 30
    stroke_rectangle [530, y], width, height
    text_box(
      "現場名",
      at: [530, y], width: width, height: height, align: :center, valign: :center, size: 11
    )
    width = 220
    height = 20
    angle = 30
    x = 200
    y = cursor - 30
    stroke_rectangle [580, y], width, height
    text_box(
      "#{@head.construction.name}",
      at: [580, y], width: width, height: height, align: :center, valign: :center, size: 14
    )
    width = 50
    height = 20
    angle = 30
    x = 200
    y = cursor - 50
    stroke_rectangle [150, y], width, height
    text_box(
      "担当者",
    at: [150, y], width: width, height: height, align: :center, valign: :center, size: 11
    )
    width = 140
    height = 20
    angle = 30
    x = 200
    y = cursor - 50
    stroke_rectangle [200, y], width, height
    text_box(
      "#{@head.delivery_person} さん",
      at: [200, y], width: width, height: height, align: :center, valign: :center, size: 14
    )
    width = 50
    height = 20
    angle = 30
    x = 200
    y = cursor - 50
    stroke_rectangle [340, y], width, height
    text_box(
      "担当TEL",
      at: [340, y], width: width, height: height, align: :center, valign: :center, size: 11
    )
    width = 140
    height = 20
    angle = 30
    x = 200
    y = cursor - 50
    stroke_rectangle [390, y], width, height
    text_box(
      "#{@head.delivery_tel}",
      at: [390, y], width: width, height: height, align: :center, valign: :center, size: 14
    )
    width = 50
    height = 20
    angle = 30
    x = 200
    y = cursor - 50
    stroke_rectangle [530, y], width, height
    text_box(
      "現場事務所",
      at: [530, y], width: width, height: height, align: :center, valign: :center, size: 11
    )
    width = 220
    height = 20
    angle = 30
    x = 200
    y = cursor - 50
    stroke_rectangle [580, y], width, height
    text_box(
      "",
      at: [580, y], width: width, height: height, align: :center, valign: :center, size: 14
    )
    width = 270
    height = 20
    angle = 30
    x = 200
    y = cursor - 70
    stroke_rectangle [530, y], width, height
    text_box(
      "出荷明細",
      at: [530, y], width: width, height: height, align: :center, valign: :center, size: 11
    )
    width = 220
    height = 20
    angle = 30
    x = 200
    y = cursor - 90
    stroke_rectangle [530, y], width, height
    text_box(
      "製品名及びサイズ",
      at: [530, y], width: width, height: height, align: :center, valign: :center, size: 11
    )
    width = 50
    height = 20
    angle = 30
    x = 200
    y = cursor - 90
    stroke_rectangle [750, y], width, height
    text_box(
      "数量",
      at: [750, y], width: width, height: height, align: :center, valign: :center, size: 11
    )
    
    define_grid(columns: 5, rows: 8, gutter: 10)
    grid([2, 0.1], [7.1, 2.2]).bounding_box do
      # image "#{Prawn::DATADIR}#{@head.construction.image}"
    end
    grid([2.38, 3.26], [7, 3.68]).bounding_box do
      Shipped.where(head_id: @head.id).each do |shipped|
        stroke_horizontal_rule
        pad(8) { text "　#{shipped.body.product_name}",size: 10 }
      end
      text "
      - 備 考 -----------------------------------------
      
      　#{@head.remark}"
    end
    grid([2.38, 3.68], [7, 3.99]).bounding_box do
      Shipped.where(head_id: @head.id).each do |shipped|
        stroke_horizontal_rule
        pad(8) { text "#{shipped.quantity}　",align: :right, size: 10 }
      end
    end
    

    stroke do
      rectangle [530, 366], 220, 370
      rectangle [750, 366], 50, 370
    end

  end

  def content
    text "出荷依頼書", align: :center, size: 20
    text "依頼日：#{Time.now.strftime("%Y年%-m月%-d日")}", align: :right
    move_down 5
    text "株式会社 柏木興産　県南営業部　#{@head.user.name}", align: :right

  end

end
