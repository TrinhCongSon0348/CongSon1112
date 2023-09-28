import Contact from "../pages/frontend/Contact";
import Home from "../pages/frontend/Home";
import Product from "../pages/frontend/Product";
import ProductDetail from "../pages/frontend/Product/ProductDetail";
import ProductBrand from "../pages/frontend/ProductBrand";
import ProductCategory from "../pages/frontend/ProductCategory";
import GioiThieu from "../pages/frontend/GioiThieu";
import ChinhSachMuaHang from "../pages/frontend/ChinhSachMuaHang";
import ChinhSachVanChuyen from "../pages/frontend/ChinhSachVanChuyen";
import ChinhSachDoiTra from "../pages/frontend/ChinhSachDoiTra";
import ChinhSachBaoHanh from "../pages/frontend/ChinhSachBaoHanh";

const RouterPublic=[
    {path:"/", component:Home},
    {path:"/san-pham", component:Product},
    {path:"/gioi-thieu", component:GioiThieu},
    {path:"/chinh-sach-mua-hang", component:ChinhSachMuaHang},
    {path:"/chinh-sach-van-chuyen", component:ChinhSachVanChuyen},
    {path:"/chinh-sach-doi-tra", component:ChinhSachDoiTra},
    {path:"/chinh-sach-bao-hanh", component:ChinhSachBaoHanh},
    {path:"/chi-tiet-san-pham/:slug", component:ProductDetail},
    {path:"/danh-muc-san-pham/:slug", component:ProductCategory},
    {path:"/thuong-hieu/:slug", component:ProductBrand},
    {path:"/lien-he",component:Contact}
]
export default RouterPublic;