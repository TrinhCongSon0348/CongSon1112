// import "./Search.css";
// import Tim from "../datatest/search.json";
// import React, { useState } from "react";

// function Tim() {
//     const [searchTerm, setSearchTerm] = useState("");
//     return (
//         <>
//             <div className="searchContainer">
//                 <div className="searchInput">
//                     <input id="searchInput" type="text" placeholder="Search here....."
//                         onChange={(event) => {
//                             setSearchTerm(event.target.value);
//                         }}
//                     />
//                 </div>
//                 <div className="search_Container">
//                     {
//                         data
//                             .filter((val) => {
//                                 if (searchTerm == "") {
//                                     return val;
//                                 } else if (val.title.toLowerCase().includes(searchTerm.toLowerCase())) {
//                                     return val;
//                                 }
//                             })
//                             .map((val) => {
//                                 return (
//                                     <div className="template" key={val.id}>
//                                         <img src={val.image} alt="" />
//                                         <h3>{val.title}</h3>
//                                         <p className="price">{val.price}</p>
//                                     </div>
//                                 )
//                             })
//                     }
//                 </div>
//             </div>
//         </>
//     );
// }

// export default Tim;