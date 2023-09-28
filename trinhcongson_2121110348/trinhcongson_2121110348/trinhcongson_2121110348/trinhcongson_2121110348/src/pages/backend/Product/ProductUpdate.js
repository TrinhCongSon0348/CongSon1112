import { useEffect, useState } from "react";
import { Link, useNavigate, useParams } from "react-router-dom";
import productservice from "../../../services/ProductService";
import { FaPlus } from "react-icons/fa";

function ProductUpdate(){
    const { id } = useParams();
    const navigator = useNavigate();
    const [products, setProducts] = useState([]);
    const [name, setName] = useState("");
    const [metakey, setMetakey] = useState("");
    const [metadesc, setMetadesc] = useState("");
    const [category_id, setCategoryId] = useState(0);
    const [brand_id, setBrandId] = useState(0);
    const [status, setStatus] = useState(1);
    function ProductEdit(event) {
        event.preventDefault(); //Khong load lai trang
        const image = document.querySelector("#image");
        var product = new FormData();
        product.append("name", name);
        product.append("metakey", metakey);
        product.append("metadesc", metadesc);
        product.append("category_id", category_id);
        product.append("brand_id", brand_id);
        product.append("status", status);
        if(image.files.lenth===0)
        {
            product.append("image", "");
        }
        else
        {
            product.append("image",image.files[0]);
        }
        productservice.update(product,id)
            .then(function (result) {
                alert(result.data.message);
                navigator("/admin/product", { replace: true })
            });
    }
    useEffect(function () {
        (async function () {
            await productservice.getAll()
                .then(function (result) {
                    setProducts(result.data.products);
                })
                .catch(function (error) {
                    console.log(error);
                })
        })();
    }, []);
    useEffect(function () {
        (async function () {
            await productservice.getById(id)
            .then(function (result) {
                const tmp=result.data.product;
                setName(tmp.name);
                setMetakey(tmp.metakey);
                setMetadesc(tmp.metadesc);
                setCategoryId(tmp.category_id);
                setBrandId(tmp.brand_id);
                setStatus(tmp.status);
            }
            );
        })();
    }, []);
    return (
        <form method="post" onSubmit={ProductEdit}>
            <div className="card">
                <div className="card-header">
                    <div className="row">
                        <div className="col-md-6">
                            <strong className="text-danger">CAP NHAT DANH MỤC</strong>
                        </div>
                        <div className="col-6 text-end">
                            <Link to="/admin/product" className="btn btn-sm btn-success me-1">
                                <FaPlus />Ve danh sach</Link>
                        </div>
                        <button type="submit" className="btn btn-sm btn-success">
                            Luu
                        </button>
                    </div>
                </div>
                <div className="card-body">
                    <div className="row">
                        <div className="col-md-9">
                            <div className="mb-3">
                                <label>
                                    <strong>Ten san pham(*)</strong>
                                </label>
                                <input
                                    value={name}
                                    onChange={(e) => setName(e.target.value)}
                                    className="form-control"
                                    type="text"
                                />
                            </div>
                            <div className="mb-3">
                                <label>
                                    <strong>Tu khoa(*)</strong>
                                </label>
                                <textarea
                                    value={metakey}
                                    onChange={(e) => setMetakey(e.target.value)}
                                    className="form-control"
                                ></textarea>
                            </div>
                            <div className="mb-3">
                                <label>
                                    <strong>Mo ta(*)</strong>
                                </label>
                                <textarea
                                    value={metadesc}
                                    onChange={(e) => setMetakey(e.target.value)}
                                    className="form-control"
                                ></textarea>
                            </div>
                            <div className="col-md-3">
                                <div className="mb-3">
                                    <label>
                                        <strong>Danh muc cha</strong>
                                    </label>
                                    <select value={category_id} onChange={(e) => setCategoryId(e.target.value)}
                                        className="from-control">
                                        <option value="0">Cap cha</option>
                                        {products.map(function (cat, index) {
                                            return <option key={index} value={cat.id}>{cat.name}</option>
                                        })}
                                    </select>
                                </div>
                                <div className="mb-3">
                                    <label>
                                        <strong>Danh muc cha</strong>
                                    </label>
                                    <select value={brand_id} onChange={(e) => setBrandId(e.target.value)}
                                        className="from-control">
                                        <option value="0">Cap cha</option>
                                        {products.map(function (cat, index) {
                                            return <option key={index} value={cat.id}>{cat.name}</option>
                                        })}
                                    </select>
                                </div>
                                <div className="mb-3">
                                    <label>
                                        <strong>Hinh</strong>
                                    </label>
                                    <input id="image" className="form-control" type="file" />
                                </div>
                                <div className="mb-3">
                                    <label>
                                        <strong>Trang thai</strong>
                                    </label>
                                    <select value={status} onChange={(e) => setStatus(e.target.value)}
                                        className="form-control">
                                        <option value="1">Xuat ban</option>
                                        <option value="2">Chua xuat ban</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    );
}
export default ProductUpdate;