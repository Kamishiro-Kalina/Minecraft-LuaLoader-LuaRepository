module('hook',package.seeall)

local hooks = {}

function GetTable()
    return hooks
end

function Add(name,id,func)
    if not isfunction(func) or not isstring(name) then return end
    if not hooks[name] then
        hooks[name] = {}
    end

    hooks[name][id] = func
end

function Remove(name,id)
    if not isstring(name) or not hooks[name] then return end

    hooks[name][id] = nil
end

function Call(name,...)
    local tbl = hooks[name]

    if not tbl then return end

    local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z

    for k,v in pairs(tbl) do
        if isstring(k) then
            a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z = v(...)
        end
    end

    if a ~= nil then
        return a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
    end
end