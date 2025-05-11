<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Booking</title>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .booking-container {
            background: #fff;
            max-width: 400px;
            margin: 40px auto;
            padding: 30px 40px 25px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 16px rgba(0,0,0,0.08);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }
        label {
            display: block;
            margin-bottom: 6px;
            color: #555;
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        input[type="date"],
        textarea {
            width: 100%;
            padding: 8px 10px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
            box-sizing: border-box;
            background: #f7f7f7;
            transition: border-color 0.2s;
        }
        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="date"]:focus,
        textarea:focus {
            border-color: #007bff;
            background: #fff;
        }
        textarea {
            min-height: 60px;
            resize: vertical;
        }
        .form-actions {
            display: flex;
            gap: 10px;
        }
        input[type="submit"], .cancel-btn {
            flex: 1 1 50%;
            background: #007bff;
            color: #fff;
            border: none;
            padding: 12px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.2s;
            text-align: center;
            text-decoration: none;
            display: inline-block;
        }
        input[type="submit"]:hover {
            background: #0056b3;
        }
        .cancel-btn {
            background: #6c757d;
        }
        .cancel-btn:hover {
            background: #495057;
        }
    </style>
</head>
<body>
    <div class="booking-container">
        <h2>Edit Booking</h2>
        <form action="editBooking" method="post">
            <input type="hidden" name="id" value="${booking.id}">
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" value="${booking.fullName}" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${booking.email}" required>

            <label for="conNumber">Contact Number:</label>
            <input type="text" id="conNumber" name="conNumber" value="${booking.conNumber}" required>

            <label for="date">Date:</label>
            <input type="date" id="date" name="date" value="${booking.date}" required>

            <label for="specRequirment">Special Requirement:</label>
            <textarea id="specRequirment" name="specRequirment" placeholder="Type here...">${booking.specRequirment}</textarea>

            <div class="form-actions">
                <input type="submit" value="Update Booking">
                <a href="booking" class="cancel-btn">Cancel</a>
            </div>
        </form>
    </div>
</body>
</html>
