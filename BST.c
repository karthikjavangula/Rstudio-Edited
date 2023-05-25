#include<stdio.h>
#include<stdlib.h>

struct node{
    int key;
    struct node *left , *right;
};

struct node* newNode(int item){
    struct node *temp = (struct node*)malloc(sizeof(struct node));
    temp->key = item;
    temp->left = NULL;
    temp->right = NULL;
    return temp;
}

int main(){
    struct node *root = NULL;
    root = insert(root,8);
    root = insert(root,3);
    root = insert(root,1);
    root = insert(root,6);
    root = insert(root,7);
    root = insert(root,10);
    root = insert(root,14);
    root = insert(root,4);
    
    printf("Inorder Traversal");
    inorder(root);
    
    printf("Deleting a node");
    root = deleteNode(root,10);
    printf("inorder Traversal");
    inorder(root);
}

void inorder(struct node *root){
    if(root!=NULL){
        inorder(root->left);
        printf("%d -> ",root->key);
        inorder(root->right);
    }
}

/*void preorder(struct node *root){
    if(root!=NULL){
        printf("%d -> ",root->key);
        preorder(root->left);
        preorder(root->right);
    }
}

void postorder(struct node *root){
    if(root!=NULL){
        postorder(root->left);
        postorder(root->right);
        printf("%d -> ",root->key);
    }
}*/

struct node *insert(struct node *node,int key){
    if(node=NULL) return newNode(key);
    if(key < node->key)
        node->left = insert(node->left,key);
    else
        node->right = insert(node->right,key);
    return node;
}

struct node *deleteNode(struct node *root,int key){
    if(root == NULL) return NULL;
    if(key < root->key){
        root->left = deleteNode(root->left,key);
    }
    else if(key > root->key){
        root->right = deleteNode(root->right,key);
    }
    else{
        if(root->left == NULL){
            struct node *temp = root->right;
            free(root);
            return temp;
        }
        else if(root->right == NULL){
            struct node *temp = root->left;
            free(root);
            return temp;
        }
        else{
        struct node *temp = minValueNode(root->right);
        root->key = temp->key;
        root->right = deleteNode(root->right,temp->key);
        }
    }
    return root;
}

struct node *minValueNode(struct node *node){
    struct node *current = node;
    while(current && current->left != NULL){
        current = current->left;
    }
    return current;
}
