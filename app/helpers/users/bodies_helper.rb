module Users::BodiesHelper
  def qrcode
    qrcode = RQRCode::QRCode.new(
      if @construction.address == ""
        "https://www.kashiwagi-k.co.jp/"
      else
        @construction.address
      end
    )
    svg = qrcode.as_svg(
      color: "008000",
      shape_rendering: "crispEdges",
      module_size: 4,
      standalone: true,
      use_path: true
    ).html_safe
  end
end
