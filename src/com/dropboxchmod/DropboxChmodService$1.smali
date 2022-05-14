.class Lcom/dropboxchmod/DropboxChmodService$1;
.super Ljava/lang/Thread;
.source "DropboxChmodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropboxchmod/DropboxChmodService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropboxchmod/DropboxChmodService;

.field final synthetic val$it:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/dropboxchmod/DropboxChmodService;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/dropboxchmod/DropboxChmodService;
    .param p2, "val$it"    # Landroid/content/Intent;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dropboxchmod/DropboxChmodService$1;->this$0:Lcom/dropboxchmod/DropboxChmodService;

    iput-object p2, p0, Lcom/dropboxchmod/DropboxChmodService$1;->val$it:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 56
    iget-object v4, p0, Lcom/dropboxchmod/DropboxChmodService$1;->val$it:Landroid/content/Intent;

    if-eqz v4, :cond_44

    .line 57
    iget-object v4, p0, Lcom/dropboxchmod/DropboxChmodService$1;->val$it:Landroid/content/Intent;

    const-string/jumbo v5, "action"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "act":Ljava/lang/String;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 59
    :cond_15
    iget-object v4, p0, Lcom/dropboxchmod/DropboxChmodService$1;->val$it:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_1b
    const-string/jumbo v4, "DropboxChmodService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "action = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 74
    .end local v0    # "act":Ljava/lang/String;
    :cond_44
    :goto_44
    iget-object v4, p0, Lcom/dropboxchmod/DropboxChmodService$1;->this$0:Lcom/dropboxchmod/DropboxChmodService;

    invoke-virtual {v4}, Lcom/dropboxchmod/DropboxChmodService;->stopSelf()V

    .line 55
    return-void

    .line 63
    .restart local v0    # "act":Ljava/lang/String;
    :cond_4a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 65
    .local v3, "runtime":Ljava/lang/Runtime;
    :try_start_4e
    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 66
    .local v2, "p":Ljava/lang/Process;
    const-string/jumbo v4, "DropboxChmodService"

    const-string/jumbo v5, "wait begin"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 68
    const-string/jumbo v4, "DropboxChmodService"

    const-string/jumbo v5, "wait end"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_67} :catch_68

    goto :goto_44

    .line 69
    .end local v2    # "p":Ljava/lang/Process;
    :catch_68
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_44
.end method
