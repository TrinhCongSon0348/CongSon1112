
import httpAxios from "../httpAxios";

function getAll()
{
    return httpAxios.get('slider/index');
}
function getById(id)
{
    return httpAxios.get('slider/show/'+id);
}
function create(data)
{
    return httpAxios.post('slider/store',data);
}
function update(id,data)
{
    return httpAxios.post('slider/update/'+id,data);
}
function remove(id)
{
    return httpAxios.delete('slider/destroy/'+id);
}
function getByPosition(position)
{
    return httpAxios.get(`slider_list/${position}`);
}

const sliderservice={
    getByPosition:getByPosition,
    getAll:getAll,
    getById:getById,
    create:create,
    update:update,
    remove:remove
}
export default sliderservice;