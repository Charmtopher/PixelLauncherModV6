.class public Landroid/support/v4/view/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final lo:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 348
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 349
    return v0

    .line 351
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 354
    :cond_1
    check-cast p1, Landroid/support/v4/view/z;

    .line 355
    iget-object v2, p0, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    if-nez v2, :cond_3

    iget-object p1, p1, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    iget-object p1, p1, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 352
    :cond_4
    :goto_0
    return v1
.end method

.method public final getSystemWindowInsetBottom()I
    .locals 2

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    return v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getSystemWindowInsetLeft()I
    .locals 2

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getSystemWindowInsetRight()I
    .locals 2

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    return v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getSystemWindowInsetTop()I
    .locals 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    return v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 360
    iget-object v0, p0, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isConsumed()Z
    .locals 2

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
