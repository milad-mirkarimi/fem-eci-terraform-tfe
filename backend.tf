terraform { 
  cloud { 
    
    organization = "milad-mirkarimi" 

    workspaces { 
      name = "fem-eci-tfe" 
    } 
  } 
}
