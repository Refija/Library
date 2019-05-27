CREATE PROCEDURE [dbo].[MemberRent]
	@MemberID int
AS
	SELECT M.*, R.RentID, B.Title from Members as M
	inner join Rents as R on R.MemberID=M.MemberID
	inner join Books as B on B.BookID=R.BookID
	where M.MemberID=@MemberID

RETURN 0
