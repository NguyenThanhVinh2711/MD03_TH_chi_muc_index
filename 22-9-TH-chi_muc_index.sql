-- tìm thông tin của khách hàng có tên là Land Of Toys Inc.
select * from customers where customerName = 'Land of Toys Inc.';
-- giải thích điều gì đang xảy ra.
explain select * from customers where customerName = 'Land of Toys Inc.';
-- thêm chỉ mục(index)
alter table customers 
add index idx_customersName (customerName);
explain select * from customers where customerName = 'Land of Toys Inc.';
-- thêm cặp index
alter table customers 
add index idx_full_name (contactFirstName,contactLastName);
explain select * from customers where contactFirstName = 'Jean' or contactFirstName ='King';
-- xoa index
alter table customers
drop index idx_full_name;