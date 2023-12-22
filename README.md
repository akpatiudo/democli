### *Automating Infrastructure Deployment on Azure Cloud With Terraform and Azure Pipeline*
The dynamism and evolving landscape of cloud computing has made organization to constantly seek ways to streamline and automate their infrastructure deployment process. Azure cloud with its robust set of services, provides environment for such endeavours. One powerful combination that has gained popularity is the use of Terraform for infrastructure as code (IaC) and Azure Pipeline for continuous integration and delivery (CI/CD).

## *What are Infrastructures?*
Infrastructures simply put are resources on which application runs on

## *Terraform as the Foundation*
Terraform, an open-source IaC tool, allows organizations to define and provision infrastructure in a declarative manner. With Terraform, infrastructure is defined as code using HashiCorp Configuration Language (HCL), enabling teams to manage their resources, such as virtual machines, databases, and networks, in a version-controlled and reproducible manner. This shift to codifying infrastructure brings consistency and scalability to deployment processes.

## *Azure Pipeline for Seamless CI/CD*
Azure Pipeline complements Terraform by providing a robust CI/CD platform. It seamlessly integrates with version control systems, such as Git, enabling automatic triggering of pipelines upon code changes. With Azure Pipeline, organizations can define and automate their deployment workflows, including testing, approval gates, and release to production. This approach significantly reduces the manual intervention required in the deployment process, enhancing efficiency and reliability.

## *Prerequisites*

An Azure DevOps account and project

An Azure subscription

You’ll need to install the Terraform extension from the Visual Studio Marketplace to get started. This extension provides tasks that can be used in Azure DevOps pipelines to run Terraform commands. 

## *Infratructures*

The infrastructure to be configured and deployed are in block of codes in *Terraform configuration file (main.tf)* these block of codes describing the infrastructure resources you want to provision. This file will be stored in your source control repository. in this project I stored it in github and named it demoCLI and you can take a look at it in the main.tf file.

## *Steps I Took to Automate and Deploy My Infrastructures*

1) I created a project on Azure DevOps, click on pipline and click on create new piplines.
![image](https://github.com/akpatiudo/democli/assets/118566096/1cba5480-a29f-42db-bab5-6110a7175af7)

2) I chosed the Classic Editor to set the configuration of my source code. my main.tf file was in my github repository
![image](https://github.com/akpatiudo/democli/assets/118566096/74a21aa9-5926-4a6a-8407-d00d9e0b9d98)

3) The three basic terraform command was initatied, however it should be noted that will have to install the varsion of tearraform that we desire, pecture 3b captured all this processes.

Terraform: Install: This task installs the specified version of Terraform on the build agent

Terraform: Init: This task initializes your Terraform working directory, downloads providers, and sets up the backend for storing the Terraform state

Terraform: Validate: This task validates your Terraform configuration files for syntax and configuration errors

Terraform: Plan: This task generates an execution plan showing which resources will be created, modified, or destroyed

I ran the first two command to see if it will pass befor runing the applyed command.

Terraform: Apply: This task applies the changes to your infrastructure based on the execution plan

## picture 3b
![image](https://github.com/akpatiudo/democli/assets/118566096/bba963e3-b2d5-4ad1-835a-57c582990ef2)

## Terraform version
![image](https://github.com/akpatiudo/democli/assets/118566096/5c970e62-557d-4b3e-9186-d2b2aac8bd17)

## Plan: three to add below
![image](https://github.com/akpatiudo/democli/assets/118566096/cd581ccb-bae5-4d73-9db1-ddb3f4b210ff)

## apply
![image](https://github.com/akpatiudo/democli/assets/118566096/c2ad538c-227e-4df7-9b49-21fffc7aa12d)

![image](https://github.com/akpatiudo/democli/assets/118566096/d9c41de1-30f9-42e9-b748-33ac53d6e1f9)

There is a block of code in the main.tf files that houses the backend that will store your infastructure files. you need to create a storage accont and a container to enable you fill: storage_account_name, container_name, key and access_key 

![image](https://github.com/akpatiudo/democli/assets/118566096/1add8f7d-38ac-4967-8ab6-2bd30c058d1f)

## A look at the infrastructure build in azure porter

1) Resouce Group
![image](https://github.com/akpatiudo/democli/assets/118566096/753c29d9-6b1f-42f1-b163-47768b417c29)

2) Resources deployed
   ![image](https://github.com/akpatiudo/democli/assets/118566096/21634f8f-08a8-4461-8d16-d099685b7973)

3) test the web app using its url
![image](https://github.com/akpatiudo/democli/assets/118566096/70ab0b48-c54c-4709-bea8-0b0b7bd8ff6d)

## File in Backend
![image](https://github.com/akpatiudo/democli/assets/118566096/61c08bcc-fb12-4144-aaab-5662003632ba)

## *Conclusion*

The combination of Terraform and Azure Pipeline empowers organizations to achieve efficient and automated infrastructure deployment on Azure Cloud. This approach not only enhances the speed of delivery but also ensures consistency, repeatability, and reliability in the deployment process. As the cloud landscape continues to evolve, embracing these tools becomes essential for organizations aiming to stay agile and competitive in their journey towards digital transformation.










