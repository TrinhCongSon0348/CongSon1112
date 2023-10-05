import React, { useState } from "react";

const initFormValue = {
    userName: "",
    password: "",  
};
const isEmptyValue = (value) => {
    return !value || value.trim().length < 1;
};

function Login() {
    const [formValue, setFormValue] = useState(initFormValue);
    const [formError, setFormError] = useState({});
    const validateForm = () => {
        const error = {};
        if (isEmptyValue(formValue.userName)) {
            error["useName"] = "Use Name is required";
        }
        if (isEmptyValue(formValue.password)) {
            error["password"] = "Password is required";
        }
        setFormError(error);

        return Object.keys(error).length === 0;
    }
    const handleChange = (event) => {
        const { value, name } = event.target;
        setFormValue({
            ...formValue,
            [name]: value,
        });
    };

    const handleSubmit = (event) => {
        event.preventDefault();
        if (validateForm()) {
            console.log("form value", formValue);
        }
        else {
            console.log("form invalid");
        }

    }
    console.log(formError);
    return (
        <div className="login-page">
            <div className="login-form-container">
                <h1 className="title">Đăng Nhập</h1>
                <form onSubmit={handleSubmit}>
                    <div>
                        <label htmlFor="user-name" className="form-label">
                            User Name
                        </label>
                        <input
                            id="user-name"
                            className="form-control"
                            type="text"
                            name="userName"
                            value={formValue.userName}
                            onChange={handleChange}
                        />
                        {formError.userName && (
                            <div className="error-feedback">{formError.userName}</div>
                        )}
                    </div>

                    <div className="mb-2">
                        <label htmlFor="password" className="form-label">
                            Password
                        </label>
                        <input
                            id="password"
                            className="form-control"
                            type="password"
                            name="password"
                            value={formValue.password}
                            onChange={handleChange}
                        />
                        {formError.password && (
                            <div className="error-feedback">{formError.password}</div>
                        )}
                    </div>

                    <button type="submit" className="submit-btn">
                        Đăng Nhập
                    </button>
                </form>
            </div>
        </div>
        // <div id="wrapper">
        //     <form action="" id="form-login">
        //         <h1 class="form-heading">Form đăng nhập</h1>
        //         <div class="form-group">
        //             <i class="far fa-user"></i>
        //             <input type="text" class="form-input" placeholder="Tên đăng nhập" />
        //         </div>
        //         <div class="form-group">
        //             <i class="fas fa-key"></i>
        //             <input type="password" class="form-input" placeholder="Mật khẩu" />
        //             <div id="eye">
        //                 <i class="far fa-eye"></i>
        //             </div>
        //         </div>
        //         <input type="submit" value="Đăng nhập" class="form-submit" />
        //     </form>
        // </div>
    );
}

export default Login;

