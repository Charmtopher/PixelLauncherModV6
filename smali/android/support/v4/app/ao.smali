.class public Landroid/support/v4/app/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2

    .line 4924
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 4925
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0

    .line 4926
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 4927
    invoke-static {p0}, Landroid/support/v4/app/au;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4929
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
