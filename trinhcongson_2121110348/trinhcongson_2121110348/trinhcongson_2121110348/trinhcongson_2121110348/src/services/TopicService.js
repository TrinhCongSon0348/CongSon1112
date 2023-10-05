
import httpAxios from "../httpAxios";

function getAll()
{
    return httpAxios.get('topic/index');
}
function getById(id)
{
    return httpAxios.get('topic/show/'+id);
}
function create(data)
{
    return httpAxios.post('topic/store',data);
}
function update(id,data)
{
    return httpAxios.post('topic/update/'+id,data);
}
function remove(id)
{
    return httpAxios.delete('topic/destroy/'+id);
}
const topicservice={
    getAll:getAll,
    getById:getById,
    create:create,
    update:update,
    remove:remove
}
export default topicservice;