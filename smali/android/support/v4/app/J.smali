.class Landroid/support/v4/app/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/I;


# instance fields
.field final synthetic fb:Landroid/support/v4/app/v;

.field final fp:I

.field final mFlags:I

.field final mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/app/v;Ljava/lang/String;II)V
    .locals 0

    .line 3848
    iput-object p1, p0, Landroid/support/v4/app/J;->fb:Landroid/support/v4/app/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3849
    iput-object p2, p0, Landroid/support/v4/app/J;->mName:Ljava/lang/String;

    .line 3850
    iput p3, p0, Landroid/support/v4/app/J;->fp:I

    .line 3851
    iput p4, p0, Landroid/support/v4/app/J;->mFlags:I

    .line 3852
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6

    .line 3857
    iget-object v0, p0, Landroid/support/v4/app/J;->fb:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->eJ:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/J;->fp:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/J;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3860
    iget-object v0, p0, Landroid/support/v4/app/J;->fb:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->eJ:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    .line 3861
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3864
    const/4 p1, 0x0

    return p1

    .line 3867
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/J;->fb:Landroid/support/v4/app/v;

    iget-object v3, p0, Landroid/support/v4/app/J;->mName:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/app/J;->fp:I

    iget v5, p0, Landroid/support/v4/app/J;->mFlags:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
