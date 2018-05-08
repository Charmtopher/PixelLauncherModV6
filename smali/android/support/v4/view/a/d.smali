.class public Landroid/support/v4/view/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ls:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 106
    new-instance v0, Landroid/support/v4/view/a/f;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/f;-><init>(Landroid/support/v4/view/a/d;)V

    iput-object v0, p0, Landroid/support/v4/view/a/d;->ls:Ljava/lang/Object;

    return-void

    .line 107
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 108
    new-instance v0, Landroid/support/v4/view/a/e;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/e;-><init>(Landroid/support/v4/view/a/d;)V

    iput-object v0, p0, Landroid/support/v4/view/a/d;->ls:Ljava/lang/Object;

    return-void

    .line 110
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/a/d;->ls:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroid/support/v4/view/a/d;->ls:Ljava/lang/Object;

    .line 122
    return-void
.end method


# virtual methods
.method public A(I)Landroid/support/v4/view/a/a;
    .locals 0

    .line 208
    const/4 p1, 0x0

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 0

    .line 172
    const/4 p1, 0x0

    return p1
.end method

.method public z(I)Landroid/support/v4/view/a/a;
    .locals 0

    .line 155
    const/4 p1, 0x0

    return-object p1
.end method
