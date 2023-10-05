import RegisterAccount from "../../../RegisterAccount/RegisterAccount";
import "../../../RegisterAccount/RegisterAccount.css";
// import { Outlet } from "react-router-dom";
// import Header from "../../../layouts/layoutSite/Header";
// import Menu from "../../../layouts/layoutSite/Menu";
// import Footer from "../../../layouts/layoutSite/Footer";
// import Copyright from "../../../layouts/layoutSite/Copyright";
// import {useState} from 'react';
// import cartList from '../../../datatest/cart';
// import GioHang from "../../frontend/GioHang/index";
// import 'bootstrap/dist/css/bootstrap.min.css';
// import 'bootstrap/dist/js/bootstrap.bundle.min.js';

function DangKyTaiKhoan()
{
    return (
        <>
            {/* <Header/>
            <Menu/> */}
            <RegisterAccount/>
            {/* <Footer/>
            <Copyright/> */}
        </>
    );
}

export default DangKyTaiKhoan;