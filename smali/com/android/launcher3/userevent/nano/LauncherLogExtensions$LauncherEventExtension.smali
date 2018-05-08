.class public final Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;->cachedSize:I

    .line 35
    return-void
.end method


# virtual methods
.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method
