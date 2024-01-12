# Building a NoteList React App Image using Docker, Terraform and Ansible

## NoteList React App

### Step 1: Create React App
```js
npx create-react-app notelist
cd notelist
```

### Step 2: Implement NoteList Component
Create a new file named `NoteList.js` in the src directory with the provided NoteList component code above.

### Step 3: Integrate NoteList Component in App
Replace the content of `src/App.js` with the provided App component code.

### Step 4: Run the App
```js
npm start
```
Visit http://localhost:3000 in your browser to see the NoteList app.

### Step 5: Commit Changes
```js
git add .
git commit -m "Initialize NoteList React app"
```

## Set Up AWS Infrastructure with Terraform
### Step 6: Clone Repository
Clone the repository containing your Terraform and Ansible scripts
```js
git clone <repository-url>
cd <repository-directory>
```

### Step 7: Create Terraform Configuration
Create a file named `main.tf` as depicted in the content above

### Step 8: Initialize Terraform
Run the following commands to initialize Terraform:
```js
terraform init
```

### Step 9: Review and Apply Terraform Changes
Review the Terraform scripts in the terraform directory and make any necessary adjustments. Then, apply the changes:
```js
terraform apply
```

## Deploy React App with Ansible and Docker
### Step 10: Deploy React App with Docker and Apache using Ansible
After Terraform applies the changes, obtain the public IP address of the EC2 instance and SSH into it:
```js
ssh -i /path/to/your/private-key.pem ubuntu@<instance-public-ip>
```

### Step 11: Create Dockerfile
Create a file named `Dockerfile` containing content as in the files above

### Step 12: Write Ansible Playbook
Create a file named `playbook.yaml` containing content as in the files above

### Step 13: Run Ansible Playbook
Run the following command in your terminal:
```js
ansible-playbook -i <Terraform_Output_IP>, --private-key ~/AWSDevOps.pem deploy_app.yaml
```
Replace `<Terraform_Output_IP>` with the IP address outputted by Terraform.

### Step 14: Access the Deployed App
Visit your AWS EC2 instance's public IP address in a web browser to access the deployed NoteList React app.
```js
http://<AWS_EC2_Public_IP>
```













