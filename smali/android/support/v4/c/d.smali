.class Landroid/support/v4/c/d;
.super Landroid/support/v4/c/j;
.source "SourceFile"


# instance fields
.field final synthetic jn:Landroid/support/v4/c/c;


# direct methods
.method constructor <init>(Landroid/support/v4/c/c;)V
    .locals 0

    .line 664
    iput-object p1, p0, Landroid/support/v4/c/d;->jn:Landroid/support/v4/c/c;

    invoke-direct {p0}, Landroid/support/v4/c/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 697
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final aA()I
    .locals 1

    .line 667
    iget-object v0, p0, Landroid/support/v4/c/d;->jn:Landroid/support/v4/c/c;

    invoke-static {v0}, Landroid/support/v4/c/c;->c(Landroid/support/v4/c/c;)I

    move-result v0

    return v0
.end method

.method protected final aB()Ljava/util/Map;
    .locals 2

    .line 687
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final aC()V
    .locals 1

    .line 707
    iget-object v0, p0, Landroid/support/v4/c/d;->jn:Landroid/support/v4/c/c;

    invoke-virtual {v0}, Landroid/support/v4/c/c;->clear()V

    .line 708
    return-void
.end method

.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 692
    iget-object p2, p0, Landroid/support/v4/c/d;->jn:Landroid/support/v4/c/c;

    invoke-virtual {p2, p1}, Landroid/support/v4/c/c;->add(Ljava/lang/Object;)Z

    .line 693
    return-void
.end method

.method protected final g(II)Ljava/lang/Object;
    .locals 0

    .line 672
    iget-object p2, p0, Landroid/support/v4/c/d;->jn:Landroid/support/v4/c/c;

    invoke-static {p2}, Landroid/support/v4/c/c;->d(Landroid/support/v4/c/c;)[Ljava/lang/Object;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected final m(Ljava/lang/Object;)I
    .locals 1

    .line 677
    iget-object v0, p0, Landroid/support/v4/c/d;->jn:Landroid/support/v4/c/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected final n(Ljava/lang/Object;)I
    .locals 1

    .line 682
    iget-object v0, p0, Landroid/support/v4/c/d;->jn:Landroid/support/v4/c/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected final p(I)V
    .locals 1

    .line 702
    iget-object v0, p0, Landroid/support/v4/c/d;->jn:Landroid/support/v4/c/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/c;->removeAt(I)Ljava/lang/Object;

    .line 703
    return-void
.end method
