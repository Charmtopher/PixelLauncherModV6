.class Landroid/support/v4/c/b;
.super Landroid/support/v4/c/j;
.source "SourceFile"


# instance fields
.field final synthetic je:Landroid/support/v4/c/a;


# direct methods
.method constructor <init>(Landroid/support/v4/c/a;)V
    .locals 0

    .line 73
    iput-object p1, p0, Landroid/support/v4/c/b;->je:Landroid/support/v4/c/a;

    invoke-direct {p0}, Landroid/support/v4/c/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 106
    iget-object v0, p0, Landroid/support/v4/c/b;->je:Landroid/support/v4/c/a;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v1, v0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    aget-object v1, v1, p1

    iget-object v0, v0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-object v1
.end method

.method protected final aA()I
    .locals 1

    .line 76
    iget-object v0, p0, Landroid/support/v4/c/b;->je:Landroid/support/v4/c/a;

    iget v0, v0, Landroid/support/v4/c/a;->mSize:I

    return v0
.end method

.method protected final aB()Ljava/util/Map;
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/support/v4/c/b;->je:Landroid/support/v4/c/a;

    return-object v0
.end method

.method protected final aC()V
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/support/v4/c/b;->je:Landroid/support/v4/c/a;

    invoke-virtual {v0}, Landroid/support/v4/c/a;->clear()V

    .line 117
    return-void
.end method

.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 101
    iget-object v0, p0, Landroid/support/v4/c/b;->je:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method protected final g(II)Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Landroid/support/v4/c/b;->je:Landroid/support/v4/c/a;

    iget-object v0, v0, Landroid/support/v4/c/a;->jm:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected final m(Ljava/lang/Object;)I
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/support/v4/c/b;->je:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected final n(Ljava/lang/Object;)I
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/support/v4/c/b;->je:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected final p(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Landroid/support/v4/c/b;->je:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->removeAt(I)Ljava/lang/Object;

    .line 112
    return-void
.end method
