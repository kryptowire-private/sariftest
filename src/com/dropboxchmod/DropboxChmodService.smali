.class public Lcom/dropboxchmod/DropboxChmodService;
.super Landroid/app/Service;
.source "DropboxChmodService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 45
    const-string/jumbo v0, "DropboxChmodService"

    const-string/jumbo v1, "DropboxChmodService is exiting\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 43
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 52
    move-object v0, p1

    .line 53
    .local v0, "it":Landroid/content/Intent;
    new-instance v1, Lcom/dropboxchmod/DropboxChmodService$1;

    invoke-direct {v1, p0, p1}, Lcom/dropboxchmod/DropboxChmodService$1;-><init>(Lcom/dropboxchmod/DropboxChmodService;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/dropboxchmod/DropboxChmodService$1;->start()V

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
