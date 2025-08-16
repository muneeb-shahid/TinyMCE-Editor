
class HtmlString {
  static const complexHtml = '''<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inline Styled Management Dashboard</title>
    </head>
<body style="font-family: Arial, sans-serif; margin: 0; padding: 0; background-color: #f4f7fa;">

    <div class="wrapper" style="display: flex; min-height: 100vh;">

        <aside class="sidebar" style="width: 250px; background-color: #2c3e50; color: #ecf0f1; padding: 20px 0; box-shadow: 2px 0 5px rgba(0,0,0,0.2);">
            <div class="sidebar-header" style="text-align: center; padding-bottom: 30px; border-bottom: 1px solid #34495e;">
                <h3 style="margin: 0; color: #ecf0f1;">Admin Panel</h3>
            </div>
            <ul class="nav-menu" style="list-style: none; padding: 0; margin: 20px 0;">
                <li style="margin-bottom: 10px;">
                    <a href="#" style="display: block; padding: 12px 20px; color: #ecf0f1; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.backgroundColor='#34495e';" onmouseout="this.style.backgroundColor='transparent';">
                        <span style="margin-right: 10px;">📊</span> Dashboard
                    </a>
                </li>
                <li style="margin-bottom: 10px;">
                    <a href="#" style="display: block; padding: 12px 20px; color: #ecf0f1; text-decoration: none; background-color: #34495e; border-left: 4px solid #3498db;">
                        <span style="margin-right: 10px;">👥</span> **Users**
                    </a>
                </li>
                <li style="margin-bottom: 10px;">
                    <a href="#" style="display: block; padding: 12px 20px; color: #ecf0f1; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.backgroundColor='#34495e';" onmouseout="this.style.backgroundColor='transparent';">
                        <span style="margin-right: 10px;">🛒</span> Orders
                    </a>
                </li>
                <li style="margin-bottom: 10px;">
                    <a href="#" style="display: block; padding: 12px 20px; color: #ecf0f1; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.backgroundColor='#34495e';" onmouseout="this.style.backgroundColor='transparent';">
                        <span style="margin-right: 10px;">⚙️</span> Settings
                    </a>
                </li>
            </ul>
        </aside>

        <main class="content-area" style="flex-grow: 1; padding: 20px;">
            <header class="navbar" style="background-color: #ffffff; padding: 15px 25px; border-radius: 8px; margin-bottom: 20px; display: flex; justify-content: space-between; align-items: center; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                <div class="navbar-left">
                    <button style="background: none; border: none; font-size: 24px; cursor: pointer; color: #333; margin-right: 20px;">☰</button>
                    <h4 style="margin: 0; color: #333; display: inline-block;">Welcome, Admin!</h4>
                </div>
                <div class="navbar-right" style="position: relative;">
                    <div class="user-dropdown" style="display: flex; align-items: center; cursor: pointer;">
                        <img src="https://via.placeholder.com/30/cccccc/ffffff?text=U" alt="User" style="width: 30px; height: 30px; border-radius: 50%; margin-right: 10px; border: 1px solid #ddd;">
                        <span style="color: #555;">John Doe</span>
                    </div>
                    </div>
            </header>

            <div class="page-header" style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 25px;">
                <h1 style="margin: 0; font-size: 28px; color: #333;">User Management</h1>
                <div class="breadcrumb" style="font-size: 14px; color: #777;">
                    <a href="#" style="text-decoration: none; color: #3498db;">Home</a> &gt;
                    <span style="font-weight: bold;">Users</span>
                </div>
                <button style="background-color: #3498db; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer; font-size: 15px; transition: background-color 0.3s ease;" onmouseover="this.style.backgroundColor='#2980b9';" onmouseout="this.style.backgroundColor='#3498db';">
                    ➕ Add New User
                </button>
            </div>

            <div class="data-section">
                <div class="card" style="background-color: #ffffff; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); overflow: hidden;">
                    <div class="card-header" style="padding: 15px 20px; border-bottom: 1px solid #eee; display: flex; justify-content: space-between; align-items: center; background-color: #f8f8f8;">
                        <h3 style="margin: 0; font-size: 20px; color: #333;">All Users</h3>
                        <div class="card-header-actions" style="display: flex; gap: 10px;">
                            <input type="search" placeholder="Search users..." style="padding: 8px 12px; border: 1px solid #ddd; border-radius: 5px; font-size: 14px;">
                            <button style="background-color: #1abc9c; color: white; border: none; padding: 8px 15px; border-radius: 5px; cursor: pointer; font-size: 14px; transition: background-color 0.3s ease;" onmouseover="this.style.backgroundColor='#16a085';" onmouseout="this.style.backgroundColor='#1abc9c';">
                                🔄 Refresh
                            </button>
                        </div>
                    </div>
                    <div class="card-body" style="padding: 20px;">
                        <div class="table-responsive" style="overflow-x: auto;">
                            <table class="table" style="width: 100%; border-collapse: collapse; margin-bottom: 20px;">
                                <thead style="background-color: #ecf0f1; border-bottom: 2px solid #ddd;">
                                    <tr>
                                        <th style="padding: 12px 15px; text-align: left; font-size: 14px; color: #555;">
                                            <input type="checkbox" id="selectAll" style="margin-right: 5px;">
                                        </th>
                                        <th style="padding: 12px 15px; text-align: left; font-size: 14px; color: #555;">ID</th>
                                        <th style="padding: 12px 15px; text-align: left; font-size: 14px; color: #555;">Name</th>
                                        <th style="padding: 12px 15px; text-align: left; font-size: 14px; color: #555;">Email</th>
                                        <th style="padding: 12px 15px; text-align: left; font-size: 14px; color: #555;">Role</th>
                                        <th style="padding: 12px 15px; text-align: left; font-size: 14px; color: #555;">Status</th>
                                        <th style="padding: 12px 15px; text-align: left; font-size: 14px; color: #555;">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr style="border-bottom: 1px solid #eee;">
                                        <td style="padding: 10px 15px;"><input type="checkbox"></td>
                                        <td style="padding: 10px 15px;">1</td>
                                        <td style="padding: 10px 15px;">Alice Smith</td>
                                        <td style="padding: 10px 15px;">alice@example.com</td>
                                        <td style="padding: 10px 15px;">Admin</td>
                                        <td style="padding: 10px 15px;">
                                            <span style="background-color: #2ecc71; color: white; padding: 4px 8px; border-radius: 4px; font-size: 12px;">Active</span>
                                        </td>
                                        <td style="padding: 10px 15px;">
                                            <button style="background-color: #f39c12; color: white; border: none; padding: 6px 12px; border-radius: 4px; cursor: pointer; margin-right: 5px; font-size: 13px;" onmouseover="this.style.backgroundColor='#e67e22';" onmouseout="this.style.backgroundColor='#f39c12';">✏️ Edit</button>
                                            <button style="background-color: #e74c3c; color: white; border: none; padding: 6px 12px; border-radius: 4px; cursor: pointer; font-size: 13px;" onmouseover="this.style.backgroundColor='#c0392b';" onmouseout="this.style.backgroundColor='#e74c3c';">🗑️ Delete</button>
                                        </td>
                                    </tr>
                                    <tr style="border-bottom: 1px solid #eee;">
                                        <td style="padding: 10px 15px;"><input type="checkbox"></td>
                                        <td style="padding: 10px 15px;">2</td>
                                        <td style="padding: 10px 15px;">Bob Johnson</td>
                                        <td style="padding: 10px 15px;">bob@example.com</td>
                                        <td style="padding: 10px 15px;">User</td>
                                        <td style="padding: 10px 15px;">
                                            <span style="background-color: #f1c40f; color: white; padding: 4px 8px; border-radius: 4px; font-size: 12px;">Pending</span>
                                        </td>
                                        <td style="padding: 10px 15px;">
                                            <button style="background-color: #f39c12; color: white; border: none; padding: 6px 12px; border-radius: 4px; cursor: pointer; margin-right: 5px; font-size: 13px;" onmouseover="this.style.backgroundColor='#e67e22';" onmouseout="this.style.backgroundColor='#f39c12';">✏️ Edit</button>
                                            <button style="background-color: #e74c3c; color: white; border: none; padding: 6px 12px; border-radius: 4px; cursor: pointer; font-size: 13px;" onmouseover="this.style.backgroundColor='#c0392b';" onmouseout="this.style.backgroundColor='#e74c3c';">🗑️ Delete</button>
                                        </td>
                                    </tr>
                                    <tr style="border-bottom: 1px solid #eee;">
                                        <td style="padding: 10px 15px;"><input type="checkbox"></td>
                                        <td style="padding: 10px 15px;">3</td>
                                        <td style="padding: 10px 15px;">Charlie Brown</td>
                                        <td style="padding: 10px 15px;">charlie@example.com</td>
                                        <td style="padding: 10px 15px;">Editor</td>
                                        <td style="padding: 10px 15px;">
                                            <span style="background-color: #9b59b6; color: white; padding: 4px 8px; border-radius: 4px; font-size: 12px;">Suspended</span>
                                        </td>
                                        <td style="padding: 10px 15px;">
                                            <button style="background-color: #f39c12; color: white; border: none; padding: 6px 12px; border-radius: 4px; cursor: pointer; margin-right: 5px; font-size: 13px;" onmouseover="this.style.backgroundColor='#e67e22';" onmouseout="this.style.backgroundColor='#f39c12';">✏️ Edit</button>
                                            <button style="background-color: #e74c3c; color: white; border: none; padding: 6px 12px; border-radius: 4px; cursor: pointer; font-size: 13px;" onmouseover="this.style.backgroundColor='#c0392b';" onmouseout="this.style.backgroundColor='#e74c3c';">🗑️ Delete</button>
                                        </td>
                                    </tr>
                                    </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card-footer" style="padding: 15px 20px; background-color: #f8f8f8; border-top: 1px solid #eee; display: flex; justify-content: space-between; align-items: center; font-size: 14px; color: #777;">
                        <nav aria-label="Page navigation example">
                            <ul style="list-style: none; padding: 0; margin: 0; display: flex; gap: 5px;">
                                <li style="display: inline-block;">
                                    <a href="#" style="text-decoration: none; display: block; padding: 8px 12px; border: 1px solid #ddd; border-radius: 4px; color: #3498db; transition: background-color 0.3s ease;" onmouseover="this.style.backgroundColor='#eee';" onmouseout="this.style.backgroundColor='transparent';">Previous</a>
                                </li>
                                <li style="display: inline-block;">
                                    <a href="#" style="text-decoration: none; display: block; padding: 8px 12px; border: 1px solid #ddd; border-radius: 4px; background-color: #3498db; color: white;">1</a>
                                </li>
                                <li style="display: inline-block;">
                                    <a href="#" style="text-decoration: none; display: block; padding: 8px 12px; border: 1px solid #ddd; border-radius: 4px; color: #3498db; transition: background-color 0.3s ease;" onmouseover="this.style.backgroundColor='#eee';" onmouseout="this.style.backgroundColor='transparent';">2</a>
                                </li>
                                <li style="display: inline-block;">
                                    <a href="#" style="text-decoration: none; display: block; padding: 8px 12px; border: 1px solid #ddd; border-radius: 4px; color: #3498db; transition: background-color 0.3s ease;" onmouseover="this.style.backgroundColor='#eee';" onmouseout="this.style.backgroundColor='transparent';">3</a>
                                </li>
                                <li style="display: inline-block;">
                                    <a href="#" style="text-decoration: none; display: block; padding: 8px 12px; border: 1px solid #ddd; border-radius: 4px; color: #3498db; transition: background-color 0.3s ease;" onmouseover="this.style.backgroundColor='#eee';" onmouseout="this.style.backgroundColor='transparent';">Next</a>
                                </li>
                            </ul>
                        </nav>
                        <small style="color: #777;">Showing 1 to 3 of 100 entries</small>
                    </div>
                </div>
            </div>

            <div id="addUserModal" class="modal" style="display: none; position: fixed; z-index: 1; left: 0; top: 0; width: 100%; height: 100%; overflow: auto; background-color: rgba(0,0,0,0.4);">
                <div class="modal-content" style="background-color: #fefefe; margin: 15% auto; padding: 20px; border: 1px solid #888; width: 80%; max-width: 500px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.2);">
                    <div class="modal-header" style="display: flex; justify-content: space-between; align-items: center; border-bottom: 1px solid #eee; padding-bottom: 10px; margin-bottom: 15px;">
                        <h5 class="modal-title" style="margin: 0; font-size: 22px; color: #333;">Add New User</h5>
                        <span class="close-button" style="color: #aaa; font-size: 28px; font-weight: bold; cursor: pointer;" onclick="document.getElementById('addUserModal').style.display='none';">×</span>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group" style="margin-bottom: 15px;">
                                <label for="userName" style="display: block; margin-bottom: 5px; font-weight: bold; color: #555;">Name</label>
                                <input type="text" id="userName" placeholder="Enter name" style="width: calc(100% - 24px); padding: 10px 12px; border: 1px solid #ddd; border-radius: 5px; font-size: 16px;">
                            </div>
                            <div class="form-group" style="margin-bottom: 15px;">
                                <label for="userEmail" style="display: block; margin-bottom: 5px; font-weight: bold; color: #555;">Email</label>
                                <input type="email" id="userEmail" placeholder="Enter email" style="width: calc(100% - 24px); padding: 10px 12px; border: 1px solid #ddd; border-radius: 5px; font-size: 16px;">
                            </div>
                            <div class="form-group" style="margin-bottom: 15px;">
                                <label for="userRole" style="display: block; margin-bottom: 5px; font-weight: bold; color: #555;">Role</label>
                                <select id="userRole" style="width: 100%; padding: 10px 12px; border: 1px solid #ddd; border-radius: 5px; font-size: 16px; background-color: white;">
                                    <option>User</option>
                                    <option>Admin</option>
                                    <option>Editor</option>
                                </select>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer" style="border-top: 1px solid #eee; padding-top: 15px; margin-top: 20px; text-align: right;">
                        <button style="background-color: #95a5a6; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer; margin-right: 10px; font-size: 15px;" onclick="document.getElementById('addUserModal').style.display='none';">Close</button>
                        <button style="background-color: #2ecc71; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer; font-size: 15px;">Save User</button>
                    </div>
                </div>
            </div>

        </main>
    </div>

    <script>
        document.querySelector('.page-header button').addEventListener('click', function() {
            document.getElementById('addUserModal').style.display = 'block';
        });

        // Close modal if clicking outside of it
        window.onclick = function(event) {
            var modal = document.getElementById('addUserModal');
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</body>
</html>''';
  static const textToHtml = '''<p>To,</p>
<ol>
  <li>The Provincial Minister For _________(All)</li>
  <li>The Advocate General Sindh.</li>
  <li>The Senior Member, Board of Revenue Sindh, Karachi.</li>
  <li>The Chairman, Sindh Revenue Board.</li>
  <li>The Chairman, Planning and Development Board, Sindh.</li>
  <li>The Secretary, Finance Department</li><li>The Secretary, Education Department</li><li>The Secretary, Rehabilitation Department</li>
</ol>

<p><strong>SUBJECT: <u>MEETING NOTICE OF THE PROVINCIAL CABINET.</u></strong></p>

<p>
  I am directed to refer to the subject noted above and to convey that the
  Cabinet meeting has been scheduled to be held on
  <strong>   at   </strong>in the Committee Room
  of Chief Minister's Secretariat to discuss the following agenda items:
</p>
<p>&nbsp;</p>

<table style="border-style: solid; border-width: 1px; border-collapse: collapse; width: 100%">
  <tbody>
    <tr>
      <td
        style="border-style: solid; border-width: 1px; text-align: center; padding: 2px; width: 10%">
        <p><strong>S.no</strong></p>
      </td>
      <td style="border-style: solid; border-width: 1px; text-align: center; width: 70%">
        <p><strong>AGENDA</strong></p>
      </td>
      <td style="border-style: solid; border-width: 1px; text-align: center" width="20%">
        <p><strong>DEPARTMENT</strong></p>
      </td>
    </tr>
    <tr>
      <td style="border-style: solid; border-width: 1px; padding: 2px; width: 10%">
        <p>1.</p>
      </td>
      <td style="border-style: solid; border-width: 1px; width: 70%">
        <p>&nbsp;</p>
      </td>
      <td style="border-style: solid; border-width: 1px; text-align: center; width: 20%">
        <p>&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td style="border-style: solid; border-width: 1px; padding: 2px; width: 10%">
        <p>2.</p>
      </td>
      <td style="border-style: solid; border-width: 1px; width: 70%">
        <p>&nbsp;</p>
      </td>
      <td style="border-style: solid; border-width: 1px; text-align: center; width: 20%">
        <p>&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td style="border-style: solid; border-width: 1px; padding: 2px; width: 10%">
        <p>3.</p>
      </td>
      <td style="border-style: solid; border-width: 1px; width: 70%">
        <p>Approval of Budget 2025</p>
      </td>
      <td style="border-style: solid; border-width: 1px; text-align: center; width: 20%">
        <p>Finance Department</p>
      </td>
    </tr>
    <tr>
      <td style="border-style: solid; border-width: 1px; padding: 2px; width: 10%">
        <p>4.</p>
      </td>
      <td style="border-style: solid; border-width: 1px; width: 70%">
        <p>Amendment in Education Policy</p>
      </td>
      <td style="border-style: solid; border-width: 1px; text-align: center; width: 20%">
        <p>Education Department</p>
      </td>
    </tr>

    <tr>
      <td colspan="3" style="border-style: solid; border-width: 1px; text-align: center; font-weight: bold; padding: 5px">
        <p>ADDITIONAL AGENDA ITEMS</p>
      </td>
    </tr>
    <tr>
      <td style="border-style: solid; border-width: 1px; padding: 2px; width: 10%">
        <p>5.</p>
      </td>
      <td style="border-style: solid; border-width: 1px; width: 70%">
        <p>Disaster Relief Fund Allocation</p>
      </td>
      <td style="border-style: solid; border-width: 1px; text-align: center; width: 20%">
        <p>Rehabilitation Department</p>
      </td>
    </tr>

    <tr>
      <td colspan="3" style="border-style: solid; border-width: 1px; text-align: center; font-weight: bold; padding: 5px">
        <p>DROPPED AGENDA ITEMS</p>
      </td>
    </tr>
    <tr>
      <td style="border-style: solid; border-width: 1px; padding: 2px; width: 10%">
        <p>6.</p>
      </td>
      <td style="border-style: solid; border-width: 1px; width: 70%">
        <p>Irrigation Project Review</p>
      </td>
      <td style="border-style: solid; border-width: 1px; text-align: center; width: 20%">
        <p>Irrigation Department</p>
      </td>
    </tr>
  </tbody>
</table>

<p>&nbsp;</p>
<p>
  2.&nbsp; &nbsp; &nbsp; &nbsp;It is, therefore, requested to kindly make it
  convenient to attend the Provincial Cabinet Meeting as per the schedule. The
  participants are requested to ensure formal dress code.
</p>
<p>
  3.&nbsp; &nbsp; &nbsp; &nbsp;The Administrative Departments are further
  requested to submit soft copies of the presentations and 55 sets of working
  paper by today, please.
</p>''';
  static const html = '''<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complex School Schedule & Student Roster</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
            color: #333;
        }
        h1, h2 {
            color: #0056b3;
            border-bottom: 2px solid #0056b3;
            padding-bottom: 10px;
            margin-top: 40px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            background-color: #fff;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #e2eafc; /* Light blue for headers */
            color: #333;
            font-weight: bold;
            text-transform: uppercase;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #eef;
        }
        .schedule-time {
            background-color: #d1e2f7; /* Slightly darker blue for time slots */
            font-weight: bold;
        }
        .schedule-subject {
            font-weight: bold;
            color: #004085;
        }
        .schedule-teacher {
            font-style: italic;
            color: #555;
            font-size: 0.9em;
        }
        .student-id {
            font-weight: bold;
            color: #007bff;
        }
        .student-major {
            font-style: italic;
            color: #6c757d;
        }
    </style>
</head>
<body>

    <h1>School Academic Schedule</h1>

    <table>
        <thead>
            <tr>
                <th rowspan="2">Time</th>
                <th colspan="5">Weekdays</th>
            </tr>
            <tr>
                <th>Monday</th>
                <th>Tuesday</th>
                <th>Wednesday</th>
                <th>Thursday</th>
                <th>Friday</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="schedule-time">08:00 - 09:00</td>
                <td>
                    <div class="schedule-subject">Mathematics I</div>
                    <div class="schedule-teacher">Mr. Smith</div>
                </td>
                <td>
                    <div class="schedule-subject">Physics I</div>
                    <div class="schedule-teacher">Ms. Johnson</div>
                </td>
                <td>
                    <div class="schedule-subject">Chemistry I</div>
                    <div class="schedule-teacher">Dr. Lee</div>
                </td>
                <td>
                    <div class="schedule-subject">Mathematics I</div>
                    <div class="schedule-teacher">Mr. Smith</div>
                </td>
                <td>
                    <div class="schedule-subject">English Literature</div>
                    <div class="schedule-teacher">Ms. Davis</div>
                </td>
            </tr>
            <tr>
                <td class="schedule-time">09:00 - 10:00</td>
                <td>
                    <div class="schedule-subject">Biology</div>
                    <div class="schedule-teacher">Ms. White</div>
                </td>
                <td>
                    <div class="schedule-subject">History</div>
                    <div class="schedule-teacher">Mr. Brown</div>
                </td>
                <td>
                    <div class="schedule-subject">Computer Science</div>
                    <div class="schedule-teacher">Mr. Green</div>
                </td>
                <td>
                    <div class="schedule-subject">Biology</div>
                    <div class="schedule-teacher">Ms. White</div>
                </td>
                <td>
                    <div class="schedule-subject">Physics I</div>
                    <div class="schedule-teacher">Ms. Johnson</div>
                </td>
            </tr>
            <tr>
                <td class="schedule-time">10:00 - 10:30</td>
                <td colspan="5" style="background-color: #ffe0b2; font-weight: bold;">BREAK</td>
            </tr>
            <tr>
                <td class="schedule-time">10:30 - 11:30</td>
                <td>
                    <div class="schedule-subject">English Literature</div>
                    <div class="schedule-teacher">Ms. Davis</div>
                </td>
                <td>
                    <div class="schedule-subject">Mathematics II</div>
                    <div class="schedule-teacher">Mr. Smith</div>
                </td>
                <td>
                    <div class="schedule-subject">Economics</div>
                    <div class="schedule-teacher">Dr. Miller</div>
                </td>
                <td>
                    <div class="schedule-subject">History</div>
                    <div class="schedule-teacher">Mr. Brown</div>
                </td>
                <td>
                    <div class="schedule-subject">Computer Science</div>
                    <div class="schedule-teacher">Mr. Green</div>
                </td>
            </tr>
            <tr>
                <td class="schedule-time">11:30 - 12:30</td>
                <td>
                    <div class="schedule-subject">Physics II</div>
                    <div class="schedule-teacher">Ms. Johnson</div>
                </td>
                <td>
                    <div class="schedule-subject">Chemistry II</div>
                    <div class="schedule-teacher">Dr. Lee</div>
                </td>
                <td>
                    <div class="schedule-subject">Geography</div>
                    <div class="schedule-teacher">Ms. Adams</div>
                </td>
                <td>
                    <div class="schedule-subject">Physics II</div>
                    <div class="schedule-teacher">Ms. Johnson</div>
                </td>
                <td>
                    <div class="schedule-subject">Mathematics II</div>
                    <div class="schedule-teacher">Mr. Smith</div>
                </td>
            </tr>
            <tr>
                <td class="schedule-time">12:30 - 13:30</td>
                <td colspan="5" style="background-color: #c8e6c9; font-weight: bold;">LUNCH BREAK</td>
            </tr>
            <tr>
                <td class="schedule-time">13:30 - 14:30</td>
                <td>
                    <div class="schedule-subject">Art & Design</div>
                    <div class="schedule-teacher">Ms. Parker</div>
                </td>
                <td>
                    <div class="schedule-subject">Physical Education</div>
                    <div class="schedule-teacher">Coach Taylor</div>
                </td>
                <td>
                    <div class="schedule-subject">Music</div>
                    <div class="schedule-teacher">Mr. Wilson</div>
                </td>
                <td>
                    <div class="schedule-subject">Art & Design</div>
                    <div class="schedule-teacher">Ms. Parker</div>
                </td>
                <td>
                    <div class="schedule-subject">Debate Club</div>
                    <div class="schedule-teacher">Mr. Carter</div>
                </td>
            </tr>
            <tr>
                <td class="schedule-time">14:30 - 15:30</td>
                <td>
                    <div class="schedule-subject">Foreign Language (French)</div>
                    <div class="schedule-teacher">Madame Dubois</div>
                </td>
                <td>
                    <div class="schedule-subject">Foreign Language (Spanish)</div>
                    <div class="schedule-teacher">Señor Garcia</div>
                </td>
                <td>
                    <div class="schedule-subject">Psychology</div>
                    <div class="schedule-teacher">Dr. Evans</div>
                </td>
                <td>
                    <div class="schedule-subject">Foreign Language (French)</div>
                    <div class="schedule-teacher">Madame Dubois</div>
                </td>
                <td>
                    <div class="schedule-subject">Elective: Robotics</div>
                    <div class="schedule-teacher">Mr. Davis</div>
                </td>
            </tr>
        </tbody>
    </table>

    <h2>Student Roster</h2>

    <table>
        <thead>
            <tr>
                <th>Student ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Grade</th>
                <th>Date of Birth</th>
                <th>Email</th>
                <th>Major/Stream</th>
                <th>Emergency Contact</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="student-id">STU001</td>
                <td>Alice</td>
                <td>Smith</td>
                <td>10</td>
                <td>2009-03-15</td>
                <td>alice.smith@example.com</td>
                <td class="student-major">Science</td>
                <td>John Smith (555-123-4567)</td>
            </tr>
            <tr>
                <td class="student-id">STU002</td>
                <td>Bob</td>
                <td>Johnson</td>
                <td>11</td>
                <td>2008-07-22</td>
                <td>bob.johnson@example.com</td>
                <td class="student-major">Arts</td>
                <td>Jane Johnson (555-987-6543)</td>
            </tr>
            <tr>
                <td class="student-id">STU003</td>
                <td>Charlie</td>
                <td>Brown</td>
                <td>9</td>
                <td>2010-01-05</td>
                <td>charlie.brown@example.com</td>
                <td class="student-major">General</td>
                <td>Sally Brown (555-111-2222)</td>
            </tr>
            <tr>
                <td class="student-id">STU004</td>
                <td>Diana</td>
                <td>Davis</td>
                <td>12</td>
                <td>2007-11-30</td>
                <td>diana.davis@example.com</td>
                <td class="student-major">Science</td>
                <td>Mark Davis (555-333-4444)</td>
            </tr>
            <tr>
                <td class="student-id">STU005</td>
                <td>Ethan</td>
                <td>Miller</td>
                <td>10</td>
                <td>2009-05-19</td>
                <td>ethan.miller@example.com</td>
                <td class="student-major">Commerce</td>
                <td>Laura Miller (555-555-6666)</td>
            </tr>
             <tr>
                <td class="student-id">STU006</td>
                <td>Fiona</td>
                <td>Garcia</td>
                <td>11</td>
                <td>2008-02-28</td>
                <td>fiona.garcia@example.com</td>
                <td class="student-major">Arts</td>
                <td>David Garcia (555-777-8888)</td>
            </tr>
            <tr>
                <td class="student-id">STU007</td>
                <td>George</td>
                <td>Wilson</td>
                <td>9</td>
                <td>2010-09-10</td>
                <td>george.wilson@example.com</td>
                <td class="student-major">General</td>
                <td>Emily Wilson (555-999-0000)</td>
            </tr>
            <tr>
                <td class="student-id">STU008</td>
                <td>Hannah</td>
                <td>Moore</td>
                <td>12</td>
                <td>2007-06-03</td>
                <td>hannah.moore@example.com</td>
                <td class="student-major">Science</td>
                <td>Chris Moore (555-222-3333)</td>
            </tr>
            <tr>
                <td class="student-id">STU009</td>
                <td>Isaac</td>
                <td>Taylor</td>
                <td>10</td>
                <td>2009-12-01</td>
                <td>isaac.taylor@example.com</td>
                <td class="student-major">Commerce</td>
                <td>Olivia Taylor (555-444-5555)</td>
            </tr>
            <tr>
                <td class="student-id">STU010</td>
                <td>Jasmine</td>
                <td>Anderson</td>
                <td>11</td>
                <td>2008-04-25</td>
                <td>jasmine.anderson@example.com</td>
                <td class="student-major">Arts</td>
                <td>Robert Anderson (555-666-7777)</td>
            </tr>
        </tbody>
    </table>

</body>
</html>''';

  static const dummyText = '''Lorem ipsum 

⦁	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac faucibus odio. 

Vestibulum neque massa, scelerisque sit amet ligula eu, congue molestie mi. Praesent ut varius sem. Nullam at porttitor arcu, nec lacinia nisi. Ut ac dolor vitae odio interdum condimentum. Vivamus dapibus sodales ex, vitae malesuada ipsum cursus convallis. Maecenas sed egestas nulla, ac condimentum orci. Mauris diam felis, vulputate ac suscipit et, iaculis non est. Curabitur semper arcu ac ligula semper, nec luctus nisl blandit. Integer lacinia ante ac libero lobortis imperdiet. Nullam mollis convallis ipsum, ac accumsan nunc vehicula vitae. Nulla eget justo in felis tristique fringilla. Morbi sit amet tortor quis risus auctor condimentum. Morbi in ullamcorper elit. Nulla iaculis tellus sit amet mauris tempus fringilla.
Maecenas mauris lectus, lobortis et purus mattis, blandit dictum tellus.
⦁	Maecenas non lorem quis tellus placerat varius. 
⦁	Nulla facilisi. 
⦁	Aenean congue fringilla justo ut aliquam. 
Mauris id ex erat. Nunc vulputate neque vitae justo facilisis, non condimentum ante sagittis. 
⦁	Morbi viverra semper lorem nec molestie. 
⦁	Maecenas tincidunt est efficitur ligula euismod, sit amet ornare est vulputate.









In non mauris justo. Duis vehicula mi vel mi pretium, a viverra erat efficitur. Cras aliquam est ac eros varius, id iaculis dui auctor. Duis pretium neque ligula, et pulvinar mi placerat et. Nulla nec nunc sit amet nunc posuere vestibulum. Ut id neque eget tortor mattis tristique. Donec ante est, blandit sit amet tristique vel, lacinia pulvinar arcu. Pellentesque scelerisque fermentum erat, id posuere justo pulvinar ut. Cras id eros sed enim aliquam lobortis. Sed lobortis nisl ut eros efficitur tincidunt. Cras justo mi, porttitor quis mattis vel, ultricies ut purus. Ut facilisis et lacus eu cursus.
In eleifend velit vitae libero sollicitudin euismod. Fusce vitae vestibulum velit. Pellentesque vulputate lectus quis pellentesque commodo. Aliquam erat volutpat. Vestibulum in egestas velit. Pellentesque fermentum nisl vitae fringilla venenatis. Etiam id mauris vitae orci maximus ultricies. 

⦁	Cras fringilla ipsum magna, in fringilla dui commodo a.

	Lorem ipsum	Lorem ipsum	Lorem ipsum
1	In eleifend velit vitae libero sollicitudin euismod.	Lorem	
2	Cras fringilla ipsum magna, in fringilla dui commodo a.	Ipsum	
3	Aliquam erat volutpat. 	Lorem	
4	Fusce vitae vestibulum velit. 	Lorem	
5	Etiam vehicula luctus fermentum.	Ipsum	

Etiam vehicula luctus fermentum. In vel metus congue, pulvinar lectus vel, fermentum dui. Maecenas ante orci, egestas ut aliquet sit amet, sagittis a magna. Aliquam ante quam, pellentesque ut dignissim quis, laoreet eget est. Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut ullamcorper justo sapien, in cursus libero viverra eget. Vivamus auctor imperdiet urna, at pulvinar leo posuere laoreet. Suspendisse neque nisl, fringilla at iaculis scelerisque, ornare vel dolor. Ut et pulvinar nunc. Pellentesque fringilla mollis efficitur. Nullam venenatis commodo imperdiet. Morbi velit neque, semper quis lorem quis, efficitur dignissim ipsum. Ut ac lorem sed turpis imperdiet eleifend sit amet id sapien.


⦁	Lorem ipsum dolor sit amet, consectetur adipiscing elit. 

Nunc ac faucibus odio. Vestibulum neque massa, scelerisque sit amet ligula eu, congue molestie mi. Praesent ut varius sem. Nullam at porttitor arcu, nec lacinia nisi. Ut ac dolor vitae odio interdum condimentum. Vivamus dapibus sodales ex, vitae malesuada ipsum cursus convallis. Maecenas sed egestas nulla, ac condimentum orci. Mauris diam felis, vulputate ac suscipit et, iaculis non est. Curabitur semper arcu ac ligula semper, nec luctus nisl blandit. Integer lacinia ante ac libero lobortis imperdiet. Nullam mollis convallis ipsum, ac accumsan nunc vehicula vitae. Nulla eget justo in felis tristique fringilla. Morbi sit amet tortor quis risus auctor condimentum. Morbi in ullamcorper elit. Nulla iaculis tellus sit amet mauris tempus fringilla.
⦁	Maecenas mauris lectus, lobortis et purus mattis, blandit dictum tellus. 
Maecenas non lorem quis tellus placerat varius. Nulla facilisi. Aenean congue fringilla justo ut aliquam. Mauris id ex erat. Nunc vulputate neque vitae justo facilisis, non condimentum ante sagittis. Morbi viverra semper lorem nec molestie. Maecenas tincidunt est efficitur ligula euismod, sit amet ornare est vulputate.
In non mauris justo. Duis vehicula mi vel mi pretium, a viverra erat efficitur. Cras aliquam est ac eros varius, id iaculis dui auctor. Duis pretium neque ligula, et pulvinar mi placerat et. Nulla nec nunc sit amet nunc posuere vestibulum. Ut id neque eget tortor mattis tristique. Donec ante est, blandit sit amet tristique vel, lacinia pulvinar arcu. Pellentesque scelerisque fermentum erat, id posuere justo pulvinar ut. Cras id eros sed enim aliquam lobortis. Sed lobortis nisl ut eros efficitur tincidunt. Cras justo mi, porttitor quis mattis vel, ultricies ut purus. Ut facilisis et lacus eu cursus.
⦁	In eleifend velit vitae libero sollicitudin euismod. 
Fusce vitae vestibulum velit. Pellentesque vulputate lectus quis pellentesque commodo. Aliquam erat volutpat. Vestibulum in egestas velit. Pellentesque fermentum nisl vitae fringilla venenatis. Etiam id mauris vitae orci maximus ultricies. Cras fringilla ipsum magna, in fringilla dui commodo a.
Etiam vehicula luctus fermentum. In vel metus congue, pulvinar lectus vel, fermentum dui. Maecenas ante orci, egestas ut aliquet sit amet, sagittis a magna. Aliquam ante quam, pellentesque ut dignissim quis, laoreet eget est. Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut ullamcorper justo sapien, in cursus libero viverra eget. Vivamus auctor imperdiet urna, at pulvinar leo posuere laoreet. Suspendisse neque nisl, fringilla at iaculis scelerisque, ornare vel dolor. Ut et pulvinar nunc. Pellentesque fringilla mollis efficitur. Nullam venenatis commodo imperdiet. Morbi velit neque, semper quis lorem quis, efficitur dignissim ipsum. Ut ac lorem sed turpis imperdiet eleifend sit amet id sapien.

 

⦁	Maecenas mauris lectus, lobortis et purus mattis, blandit dictum tellus. 
Maecenas non lorem quis tellus placerat varius. Nulla facilisi. Aenean congue fringilla justo ut aliquam. Mauris id ex erat. Nunc vulputate neque vitae justo facilisis, non condimentum ante sagittis. Morbi viverra semper lorem nec molestie. Maecenas tincidunt est efficitur ligula euismod, sit amet ornare est vulputate.
In non mauris justo. Duis vehicula mi vel mi pretium, a viverra erat efficitur. Cras aliquam est ac eros varius, id iaculis dui auctor. Duis pretium neque ligula, et pulvinar mi placerat et. Nulla nec nunc sit amet nunc posuere vestibulum. Ut id neque eget tortor mattis tristique. Donec ante est, blandit sit amet tristique vel, lacinia pulvinar arcu. Pellentesque scelerisque fermentum erat, id posuere justo pulvinar ut. Cras id eros sed enim aliquam lobortis. Sed lobortis nisl ut eros efficitur tincidunt. Cras justo mi, porttitor quis mattis vel, ultricies ut purus. Ut facilisis et lacus eu cursus.
⦁	In eleifend velit vitae libero sollicitudin euismod. 
Fusce vitae vestibulum velit. Pellentesque vulputate lectus quis pellentesque commodo. Aliquam erat volutpat. Vestibulum in egestas velit. Pellentesque fermentum nisl vitae fringilla venenatis. Etiam id mauris vitae orci maximus ultricies. Cras fringilla ipsum magna, in fringilla dui commodo a.
Etiam vehicula luctus fermentum. In vel metus congue, pulvinar lectus vel, fermentum dui. Maecenas ante orci, egestas ut aliquet sit amet, sagittis a magna. Aliquam ante quam, pellentesque ut dignissim quis, laoreet eget est. Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut ullamcorper justo sapien, in cursus libero viverra eget. Vivamus auctor imperdiet urna, at pulvinar leo posuere laoreet. Suspendisse neque nisl, fringilla at iaculis scelerisque, ornare vel dolor. Ut et pulvinar nunc. Pellentesque fringilla mollis efficitur. Nullam venenatis commodo imperdiet. Morbi velit neque, semper quis lorem quis, efficitur dignissim ipsum. Ut ac lorem sed turpis imperdiet eleifend sit amet id sapien.
''';
}
