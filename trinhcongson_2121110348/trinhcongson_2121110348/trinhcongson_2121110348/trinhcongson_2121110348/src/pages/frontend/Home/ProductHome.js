import { useEffect, useState } from "react";
import ProductItem from "../../../component/frontend/ProductItem";
import productservice from "../../../services/ProductService";
import { Link } from "react-router-dom";
// import listProduct from '../../../datatest/slider.json';

function ProductHome(props) {
    // const products=listProduct.data;
    const [products, setProducts] = useState([]);
    useEffect(function () {
        (async function () {
            await productservice.getProductHome(8, props.category.id)
                .then(function (result) {
                    setProducts(result.data.products);
                });
        })();
    }, []);
    if (products != null)
    {
        return (
            <div className="container my-3">
                <div className="product-category">
                    <h3 className="text-center text-danger">{props.category.name}</h3>
                    <div className="row">
                        {products.map(function (product, index) {
                            return <ProductItem key={index} product={product} />
                        })}
                    </div>
                    <div className="text-center my-3">
                        <Link to={"san-pham/" + props.category.slug} className="btn btn-success">Xem them</Link>
                    </div>
                </div>
            </div>
        );
    }
}

export default ProductHome;