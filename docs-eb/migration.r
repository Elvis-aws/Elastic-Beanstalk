


*********
Migration
*********
    - After creating an Elastic beanstalk env, you cannnot change the ALB(CLB-ALB) type only its configuration
    - Steps
        - Create a new environment with same configuration but with the ALB as the CLB (We can not use the clone
          feature)
        - Cloning the old env will clone the CLB and thats not what you want
        - Deploy your application to a new env
        - Do a CNAME swap or Route 53 to change DNS
        - Always seperate your RDS from your beanstalk