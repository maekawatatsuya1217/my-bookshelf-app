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
            const list = document.getElementById("list");
            const comment = XHR.response.comment;
            const user = XHR.response.user;
            const html = `
            <p>
              <strong><a href="/users/${comment.user_id}">${user.name}</a>：</strong>
              ${comment.text}
            </p>`;
        list.insertAdjacentHTML("afterend", html);
        }
    })
};
window.addEventListener('load', post)