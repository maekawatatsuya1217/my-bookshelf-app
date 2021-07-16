function post (){
    const submit = document.getElementById("submit");
    submit.addEventListener('click', (e) =>{
        e.preventDefault();
        const form = document.getElementById("form");
        const blog = document.getElementById("blog");
        const blogId = blog.getAttribute("value");
        const formData = new FormData(form);
        const XHR = new XMLHttpRequest();
        XHR.open("POST", `/blogs/${blogId}/comments`, true);
        XHR.responseType = "json";
        XHR.send(formData);
        XHR.onload = () => {
            console.log(XHR.response);
        }
    })
};
window.addEventListener('load', post)