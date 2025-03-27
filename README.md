#  youth_care_application (Admin Perspective)

## Description

Welcome to the **youth_care_application Admin Panel**! This application allows administrators to manage tournaments, oversee user registrations, and ensure smooth communication between users and instructors. The app is designed to help admins perform essential tasks efficiently, such as approving registrations, managing teams, and communicating with instructors.

### Key Features for Admins

- **Manage User Registrations**:  
  As an admin, you have full control over **user registrations** for tournaments. You can view and approve users who wish to participate in different events.

- **Approve or Reject Tournament Registrations**:  
  Once an instructor submits a list of teams, you will review and approve or reject each team’s registration for the tournament.

- **Team Management**:  
  You have the authority to manage tournament teams. If a student cancels their registration, you can open up a spot for another student to join the tournament.

- **Instructor Communication**:  
  Admins can receive requests from instructors to cancel or create new student registrations. You can also communicate with instructors to make necessary adjustments to the tournament.

- **View Event Details**:  
  As an admin, you can view all upcoming tournaments and events, including participant lists, team details, and more.

- **System Control**:  
  You have full access to the backend where you can perform tasks such as removing users, managing tournament status, and ensuring the overall operation of the tournament registration process.

### Admin Workflow

1. **Review User Registrations**:  
   When a user signs up, you can monitor their status and approve or reject their registration for tournaments.

2. **Approve Teams**:  
   Once instructors send the list of teams, you will review the list and approve the registration of each team based on the details provided.

3. **Handle Cancellations**:  
   In case a student cancels their registration, the system will notify you to either approve a new registration for that spot or leave the spot open.

4. **Manage Instructor Requests**:  
   Instructors can send requests to cancel or add students to the tournament. You can approve or reject these requests based on the situation.

5. **Monitor Tournament Progress**:  
   You can track the status of all tournaments and ensure that the registration process is smooth. You will also be notified if any changes or issues arise.

6. **System Notifications**:  
   Receive notifications for key actions such as user registration, cancellations, or instructor requests, ensuring you are always up to date.

### Technologies Used

- **Flutter**: For building cross-platform mobile applications, offering a seamless experience for users and admins.
- **Firebase Authentication**: For managing user sign-ins and authentication.
- **Firebase Firestore**: To store and manage tournament data, user details, and registration status.
- **Laravel**: For handling the backend API, processing business logic, and managing data.
- **PHP**: The server-side scripting language used in conjunction with Laravel to interact with the database and manage the overall system.

### Admin Workflow Overview

1. **Instructors Submit Teams**: Instructors send a list of all teams for approval.
2. **Admins Approve Teams**: Admins review and approve team registrations, ensuring all details are correct.
3. **User Registration**: Admins can manage the registration of users to the system and ensure no duplicates exist.
4. **Cancellation and Substitution**: If a student cancels, the admin can replace them with a new student if needed.
5. **Communication with Instructors**: Admins can easily handle instructor requests to modify student registrations or cancel teams.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/youth_care_application_admin.git
