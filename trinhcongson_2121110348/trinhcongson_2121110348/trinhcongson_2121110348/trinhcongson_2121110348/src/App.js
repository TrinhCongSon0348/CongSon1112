import React from "react";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import LayoutSite from "./layouts/layoutSite";
import RouterPublic from "./router/RouterPublic";
import RouterPrivate from "./router/RouterPrivate";
import LayoutAdmin from "./layouts/layoutAdmin";
// import Shop from "./component/shop";
function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<LayoutSite />}>
          {RouterPublic.map(function (router, index) {
            const Page = router.component;
            return <Route path={router.path} element={<Page />} />
          })}
        </Route>
        <Route path="/admin" element={<LayoutAdmin />}>
          {RouterPrivate.map(function (router, index) {
            const Page = router.component;
            return <Route path={router.path} element={<Page />} />
          })}
        </Route>
      </Routes>
      {/* <div className="App">
          <Shop />
        </div> */}
    </BrowserRouter>
  );
}

export default App;
