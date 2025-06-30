-- Using only one # will make the table in the local temp only , as in private to this connection
CREATE TABLE #LocalTempTable (
id int,
name varchar (20)
);

insert into #LocalTempTable values (1,'jo')
select * from #LocalTempTable

DROP TABLE #LocalTempTable

-- Using  ## will make the table in the global temp meaning every connection can have access to it

CREATE TABLE ##GlobalTempTable (
id int,
name varchar (20)
);

insert into ##GlobalTempTable values (1,'jo')
select * from ##GlobalTempTable

DROP TABLE ##GlobalTempTable
