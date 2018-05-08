.class public Lcom/android/quickstep/MultiStateCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCallbacks:Landroid/util/SparseArray;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    return-void
.end method


# virtual methods
.method public addCallback(ILjava/lang/Runnable;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method public getState()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    return v0
.end method

.method public setState(I)V
    .locals 4

    .line 34
    iget v0, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    .line 36
    iget-object p1, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 37
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 40
    iget v2, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 42
    if-eqz v1, :cond_0

    .line 44
    iget-object v2, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 45
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method
