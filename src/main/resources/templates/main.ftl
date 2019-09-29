<#import "parts/common.ftl" as C>
<@C.page>
    <div class="form-row">
    <form method="get" action="/main" class="form-inline">
        <input type="text" name="filter" value="${filter?ifExists}" class="form-control" placeholder="Search by tag">
        <button class="btn btn-primary ml-2" type="submit">Search</button>
    </form>
    </div>
    <a class="btn btn-primary mt-2" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Add new post
    </a>
    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <input class="form-control" type="text" name="text" placeholder="Введите сообщение"/>
                </div>
                <div class="form-group">
                    <input class="form-control" type="text" name="tag" placeholder="Введите tag"/>
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input class="custom-file" type="file" name="file" id="customFile">
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <div class="form-group">
                    <button class="btn btn-primary" type="submit">Add</button>
                </div>
            </form>
        </div>
    </div>
<div class="card-columns">
    <#list messages as message>
    <div class="card my-3">
        <div class="card-img-top">
            <#if message.filename??>
                <img src="/img/${message.filename}">
            </#if>
        </div>
        <div class="m-2">
            <span>${message.text}</span>
            <i>${message.tag}</i>
        </div>
        <div class="card-footer text-muted">
            ${message.authorName}
        </div>
    </div>
        <#else>
        FUCK YOU<3
    </#list>
</div>
</@C.page>