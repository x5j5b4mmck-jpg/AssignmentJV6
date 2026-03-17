USE J6Assignment;
GO

-- 1. Thêm 2 Danh mục (Category)
INSERT INTO Categories (Id, Name) VALUES 
('1000', N'Đồng hồ thông minh'),
('1001', N'Máy tính xách tay');
GO

-- 2. Thêm 4 Sản phẩm (Product)
-- Lưu ý cột Image: Đây chính là TÊN FILE ẢNH bạn sẽ phải lưu trong Project
INSERT INTO Products (Name, Image, Price, CreateDate, Available, CategoryId) VALUES 
(N'Apple Watch Series 8', 'apple-watch.jpg', 500, GETDATE(), 1, '1000'),
(N'Samsung Galaxy Watch 5', 'galaxy-watch.jpg', 350, GETDATE(), 1, '1000'),
(N'Dell XPS 15', 'dell-xps.jpg', 1500, GETDATE(), 1, '1001'),
(N'MacBook Pro M2', 'macbook-pro.jpg', 2000, GETDATE(), 1, '1001');
GO

-- 3. Thêm Tài khoản mẫu (Account) - Để  Đăng nhập
INSERT INTO Accounts (Username, Password, Fullname, Email, Photo) VALUES 
('admin', '123', N'Giám Đốc', 'admin@fpt.edu.vn', 'admin.jpg'),
('teonv', '123', N'Nguyễn Văn Tèo', 'teonv@fpt.edu.vn', 'user.jpg');
GO

-- 4. Thêm Vai trò (Role)
INSERT INTO Roles (Id, Name) VALUES 
('ADMIN', N'Quản trị viên'),
('USER', N'Khách hàng');
GO

-- 5. Cấp quyền cho tài khoản (Authority)
-- Cấp quyền ADMIN cho tài khoản 'admin', quyền USER cho 'teonv'
INSERT INTO Authorities (Username, RoleId) VALUES 
('admin', 'ADMIN'),
('teonv', 'USER');
GO