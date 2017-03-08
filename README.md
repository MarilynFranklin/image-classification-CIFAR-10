# Image Classification on the [CIFAR 10 dataset](https://www.cs.toronto.edu/~kriz/cifar.html)

# Train CNN on AWS

1. Add AWS access and secret key to `~/.aws/credentials`

        [default]
        aws_access_key_id = "access"
        aws_secret_access_key = "secret"

2. Install [terraform](https://www.terraform.io/downloads.html)

   On Mac, you can use brew

        brew install terraform
        
3. Clone this repository:

        git clone https://github.com/MarilynFranklin/image-classification-CIFAR-10.git
        cd image-classification-CIFAR-10
        
4. Launch GPU instance:

        terraform apply terraform/
        
5. Get the `public_ip` from terraform's output and visit the url in your browser: `x.x.x.x:8888`

6. When your finished, you'll want to terminate the gpu instance so AWS does not continue to charge your account

        terraform destroy terraform/
