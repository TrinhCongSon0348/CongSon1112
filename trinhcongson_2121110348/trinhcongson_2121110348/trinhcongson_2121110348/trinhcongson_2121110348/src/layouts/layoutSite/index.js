import { Outlet } from "react-router-dom";
import Header from "./Header";
import Menu from "./Menu";
import Footer from "./Footer";
import Copyright from "./Copyright";
// import Navbar from "../../component/Navbar";
// import CartList from "../../component/CartList";
// import FooterCart from "../../component/FooterCart";
import DangNhap from "../../pages/frontend/DangNhap";
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min.js';

function LayoutSite() {
    return (
        <>
            <Header/>
            <DangNhap/>
            {/* <Navbar/>
            <CartList/>
            <FooterCart/> */}
            <Menu/>
            <Outlet/>
            <Footer/>
            <Copyright/>
        </>
    );
}

export default LayoutSite;