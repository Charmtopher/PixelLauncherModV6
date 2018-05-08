.class final Landroid/support/v7/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 188
    check-cast p1, Landroid/support/v7/widget/z;

    check-cast p2, Landroid/support/v7/widget/z;

    iget-object v0, p1, Landroid/support/v7/widget/z;->pk:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p2, Landroid/support/v7/widget/z;->pk:Landroid/support/v7/widget/RecyclerView;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v4, -0x1

    if-eq v0, v3, :cond_3

    iget-object p1, p1, Landroid/support/v7/widget/z;->pk:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v4

    :cond_3
    iget-boolean v0, p1, Landroid/support/v7/widget/z;->ph:Z

    iget-boolean v3, p2, Landroid/support/v7/widget/z;->ph:Z

    if-eq v0, v3, :cond_5

    iget-boolean p1, p1, Landroid/support/v7/widget/z;->ph:Z

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v2

    :cond_5
    iget v0, p2, Landroid/support/v7/widget/z;->pi:I

    iget v2, p1, Landroid/support/v7/widget/z;->pi:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_6

    return v0

    :cond_6
    iget p1, p1, Landroid/support/v7/widget/z;->pj:I

    iget p2, p2, Landroid/support/v7/widget/z;->pj:I

    sub-int/2addr p1, p2

    if-eqz p1, :cond_7

    return p1

    :cond_7
    return v1
.end method
