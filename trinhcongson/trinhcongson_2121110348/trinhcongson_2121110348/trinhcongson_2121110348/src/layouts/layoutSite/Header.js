import Logo from '../../assets/images/Logo.png';

function Header() {
    return (<section className="Header">
        <div className="container">
            <div className="row">
                <div className="col-md-4">
                    <img src={Logo} alt="" className="img-fluid" style={{width:200}}/>
                </div>
                <div className="col-md-3">
                    TÌM KIẾM
                    
                </div>
                <div className="col-md-2">ĐĂNGKÝ/ĐĂNGNHẬP</div>
                <div className="col-md-1">
                    Gio hang
                </div>
            </div>
        </div>
    </section>);
}

export default Header;