{
    "Comment": "Hello world in Amazon States Language",
    "StartAt": "Hello, World",
    "States": {
    "Hello, World": { 
      "Type": "Task",
      "Resource": "arn:aws:lambda:us-east-1:123456789012:function:HelloWorld",
      "End": true
    }
  }
}